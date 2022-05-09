Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077FE7B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 00:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652055238;
	h=To:Subject:From:Message-Id:Date;
	bh=7mfjj1HEkxwgPyTuS5txZK38EFt4/504aFd+meIJjw4=;
	b=DUwZnrbAWlDOp2uQ8KNXtKK9/XhARlG8L4R2dcGGK6grQmp5IJSAZIk1rB42r84f
	9oop7/o6pnCXMycdogghVhOZ7EME+AUzvjUNHp/MzgYO6LurN9jP5EuVO8q/sssDfgd
	do6zm6HJ9LiGNvE/Z+tfkKGPMRUaBlhx2XfbVZt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652055238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7mfjj1HEkxwgPyTuS5txZK38EFt4/504aFd+meIJjw4=;
	b=CnPSYCGyadzcd1V6myT3uYXIDQ0ghh3dHlyFBD7kTKntKq2OrAatgO39aEUAWFn+
	EmX37ZXaS3l6M93Us0XjO5lhCz2jamT8gcbzfzkquiNRbS3fLM3LLW7U5YXUfknzla9
	eUtIpuaoxk5Won40AL6SgecuI+KbZb7tgd/0wyKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a62a6675-382d3020-a8e1-4a2f-9695-cc579adf21d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51ca0bb1c4d3cdf62fdb770ef7c0c85c1508ad17f5eb376ea7e64553b4160063
Date: Mon, 9 May 2022 00:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652055238
