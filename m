Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BD52C9E
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 16:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651508518;
	h=To:Subject:From:Message-Id:Date;
	bh=L9BQZ6ryoYb7IxBg8gbV5ImVIyYXUEWU6vc8PZWDSOw=;
	b=Hd60ZjzsvXlINN7HJSrCYSJ7v1jb5YBVmVnXnHmKi9ri+GQXchnrojqgkOrtW4PA
	nIR4QbC6Gt1jhMoNp5ogUgKld1l3oPi3AYtenaOYdId8Ur3kIT3nMwbFgqtGZlMy1WY
	SNDEtX8a6SGLguAUK/vzwkgD9tcqhdxMssBDDiYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651508518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L9BQZ6ryoYb7IxBg8gbV5ImVIyYXUEWU6vc8PZWDSOw=;
	b=TBVTi86LdLY5UFfOYcRg1avlX2nSVv6Q2R5Vu6MWq5VKosJ1AJATqHQeu+ZNQKZD
	R0iYVsCrnB+mLv1eH/BwxLpdu3/X5THTVGrqxghPDXlZMskXqyeJ+64hD8Z9YyYhKnI
	m6VEISLqcrmEmf28T7aPsSayfog5o/4U/e6UQuVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018085941db4-4372f0c0-f839-4939-b18c-f47d174c3530-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 532f3c4d335313d98c08a33d3c86f89f33de7f244dae32413fe57abfa2aecbbc
Date: Mon, 2 May 2022 16:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651508518
