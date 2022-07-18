Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4038F4A1D
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658185012;
	h=To:Subject:From:Message-Id:Date;
	bh=7kzbOHAR1ZaP+OktMT//BN/UeS3pFLppoGpixMI2mnw=;
	b=gLl5M86RQgJNW0RoQyMhC9zuSUBDMC2MwSGSnnsmqul+ygegVO1aLiUT+srYgOg4
	YczVpopHFX7IC5PGaBycpAfXUEU46YLWVm3JE1M9ShS1HlVv6kgNryuvlFXY2ibGaKA
	/8OHsykVddI38TsWjZ49QZbozylXrjFPWOVGvEfg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658185012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7kzbOHAR1ZaP+OktMT//BN/UeS3pFLppoGpixMI2mnw=;
	b=QWV1gckw5bNLVGcQXYXHOPUEAyaD6o1KgThc7iyedPkaLP730qUIWKpgYIE4v9eu
	k/tM0rsrmaDFDnVUuivPr0ysO3A9Hj2VmW5tI7iVE/AjcXfSfXpYQU5EcFL1e7DQK8U
	pXoG6BwLCNadPDSD58DmfhfYtPiAxadXLYotTJ5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213875486-6d5df6f4-d641-4b6f-ae93-08003ef42c67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae892438d25fa28265f5b019f343916c8b250a7bb327f6a85ac801fdbaff071e
Date: Mon, 18 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658185012
