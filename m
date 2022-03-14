Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97CC186F
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647265585;
	h=To:Subject:From:Message-Id:Date;
	bh=okQKH4bo/Nv7gKCzp/zGZWFWB6ixm6GbbGpM6FTgacc=;
	b=YG8+GMyxDi3LdaQagzGkIP8WVHrxCcpGLChob0cg2a0a5RUd3D/a7NlX9KGwMFd5
	f/uaC8iTZFq9yLCEIUcR8B8Le4IJGwH9smQU3oRZXOQ2+sJpUjvyA0hM9C/XuMc+dkh
	VyK+bUNViG0yzkyWVzveYPSVS4yD/xyY7ep5GMC4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647265585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=okQKH4bo/Nv7gKCzp/zGZWFWB6ixm6GbbGpM6FTgacc=;
	b=inmhfTpcYNl8fWjCkmAZyj7fio8deVC9RqU8zER3pxqxxjiBTZr1fm/1nyCWG370
	1djPGgCRPjGiXsGPQXiJFTQGAQAi/Vv104L/Ggrz3xWkaJGUHnDgb/uO+0P8mysdSAA
	Z7AjNoWLcd2loKk8l2UQEya6fAdzocfyhoyBkF3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88ae172a-f3f90bcd-4ead-4a3d-aa2a-a56b70d63aab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57536777f3e38f40b0cfb4a0ce4c487cd28c6f645cf055912f1312f59e822f0d
Date: Mon, 14 Mar 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647265584
