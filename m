Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1119610F2
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 00:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652056438;
	h=To:Subject:From:Message-Id:Date;
	bh=67LwpseWAzrMCvq5BzOa4lMep/eY5IxX+21W5AVMufg=;
	b=CaREypWiREUHKHA/HBD9nB5bWDT4I11WbN8Z7yvcqLqTOIpzGb2LelbHD/If+gPt
	ukDKu7OTjEVa44Aml+FQwDscvd0l25VLOBgziwKuPkOQmGIfS3IFdMBei7utCyh1X8k
	42nOaNZ0patqjXXaXaRmJMaGXJdbRICu2sEKps1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652056438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=67LwpseWAzrMCvq5BzOa4lMep/eY5IxX+21W5AVMufg=;
	b=IDiFT+j1we1PAubFXp5xu12r/rb+r2LB7jcAF+xLJ2996OuE6L5gXkzDp8edCBVf
	WtUubTnXcqYe19uBI9ueCe5mMTNTsNdfe5JVBSXvLIqajizK6Yb2Xg1JTdFzJXuNAtg
	hjNRawnHsFWvro2im3Kro7C8u39DZLGB46jR72rw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a63cb604-68bb9910-e0f5-49ca-bb0b-c867630d58da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dd9ab5f7a37a258511a892cabaa0ccc5860b36a8c5d95b1a39e94325ef220d6
Date: Mon, 9 May 2022 00:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652056438
