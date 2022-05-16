Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095DD7A
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 06:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652683859;
	h=To:Subject:From:Message-Id:Date;
	bh=JzFdPUZS2+e4omKzrX2/y3wqwFk2Qu5uNbBnAMzEJAE=;
	b=DdBGPvc5Xwh4Bk0cCjrRpMMWSbsi6vEFfpQQ+Q7g4q3yYrg2XZMO0YczhfKHLgoB
	a4L+UWHCmHgS25aWwdleJ1chMDDjg2RYFOWwYU6UDi0i93f4mN2ffeKohksfSqKBY8O
	3En/58/lx6713Alw5Z3OQjmh8NhlusGwzN8fTxy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652683859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JzFdPUZS2+e4omKzrX2/y3wqwFk2Qu5uNbBnAMzEJAE=;
	b=C87W7yhqaUU8eqf4pN36v6MyZKEuXT98fgGbttDaWCYG5tVfR1hp41nGQK0M1a24
	Po5ll3qNlJs0hvWmpbdeHuw8HTczI0mLIK/c0d3MbRlnqgSUEsTN5XcJvrV0/UAueMz
	/mpeVyTzk8JoEuRVY8WKH774LjqOPb6vJFCS4Ulc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cba26531-a51d8712-31a8-4bd8-81ca-204b0660098d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c71ca4201ddee84436bcbfc9ccf0c2fb28dc4f69d2a44641779dca479e09d37
Date: Mon, 16 May 2022 06:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652683859
