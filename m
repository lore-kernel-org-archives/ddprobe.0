Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05037E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658618812;
	h=To:Subject:From:Message-Id:Date;
	bh=M7V/3IvqeG6NwNGdYk+4G3EWjbUS1y6SllYLnDYuhnA=;
	b=GzucC/Ylw2a47OOuLxu1MTAeaFeWZzdGzW3+0VYMogYe2Bk0+MVJcQMmaUSsUSrj
	x3KyppWLGS7k4IRgriobgex+XFd2obKCnc2uRHaB6ZNqSDRaK3tteJD4/YCsDhHTH5R
	pyDE2FlY5U1DAUlYj3D+QOxA3pPv1LiFUf26zdAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658618812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M7V/3IvqeG6NwNGdYk+4G3EWjbUS1y6SllYLnDYuhnA=;
	b=aghpf2d8YIZXXpxqsMAdOv79Pj5YFwwnTMF10Du4ypYT4JFtU59O0oONqxVMTqW3
	/LuhgjYR/UeDAZT5L/ndIsHVoC6dAHlHls4eoECW4FbilSjOTxfW5nZPSAKJ558mO+w
	uIhv4ULQxM9hNFbIrIJLVN+YmmeznPHEkJY+Gn2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d62975b-7ddbefeb-ae51-49e3-b876-cc80b12d894b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94a8d49936c76c229a5cf88675d1712877cfe3cee8be479f7106966ae1d7c6a1
Date: Sat, 23 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658618812
