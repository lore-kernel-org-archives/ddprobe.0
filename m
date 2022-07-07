Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A963368
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657157812;
	h=To:Subject:From:Message-Id:Date;
	bh=6XUJqLXICEeXU/SFsDq38LwBc2VFG7vz12opMKOVxAE=;
	b=GtAO6vTSMxGkXfpTXFdPKMn5Al02C2LV2KWFSnoCngd5JPh4QWUR+g+zbMF5x+XY
	dOw5Pvbs9+sZc/e7ZaLtI5ARFIcMCXnOfHwIuYmWE3tSIFJ5Rvc/ynvNFtFpU2ythMy
	KVBtD8cyhwRyAR643kmARK8P5NPeiF5F/ebdm6VY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657157812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6XUJqLXICEeXU/SFsDq38LwBc2VFG7vz12opMKOVxAE=;
	b=BVnrF9nyHf19D62iBVOQ12v4Jz1a4Y70xJ0QHS0F9tMjlvXHC++h/L0XoKxO3/Zf
	qPqL5e7k6IJ9mcD9ylNDdYPoagkFSPE5Cr7COuH389qGq0ZaPTNpWE/lK3PTzvTHKn/
	1nYP12rqUCrFQ4HvXnjIJdcdSgph6Io+ByZ/FmyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d64d8037-07eb326a-0fc3-45d7-8f14-6df43923b31e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bcc695545200e12eec6b139c29f243d00ed2021779d92985577d1d3c035c65c
Date: Thu, 7 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657157812
