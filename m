Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E23D7ED
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647919884;
	h=To:Subject:From:Message-Id:Date;
	bh=t3V3rVPbpHJBy954CurY/+MQx4pJPTZudC4Jo/kEJh8=;
	b=KaCejRKUnRtF1LIeTtVUp3MuPbE96GJTEg+0UMDQQOFeEE+AxJ85vg0QlgH3lsFo
	j20p4IGRBmq2gZs/Rh7CyMWzNLDYwlSck+MM00YQFo6qPfZd98Rzjdw6pU5opZUueJw
	XjVNupZYV1BHpxm9faAQ1p0jg4yOWJ4SBIJDm1Bw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647919884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t3V3rVPbpHJBy954CurY/+MQx4pJPTZudC4Jo/kEJh8=;
	b=DxIuFaD5W7Z0Lywwuk9FKF3hjj55lQhGSs+ekOM5SLfsvU1RLfUPWAsnxaTxL2qh
	r8ipPR4XVjwSIykCfyHIzIuAqqKsdxmE3H62SUOmEWuAtWywl6pFj2Bik9UWpSNPXLD
	vSFhPy1Xe0WlsspgteS2zua6t5BMLYJICdlYZ/Ao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fafade9f5-a1d79f7a-eaa9-4e80-83d9-46b3715314fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b235cb68f95616d2c28075417c1b6c5d7d4e29625b6b3dc73893eb6058f0f362
Date: Tue, 22 Mar 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647919884
