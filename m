Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EED828EE
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 15:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652972579;
	h=To:Subject:From:Message-Id:Date;
	bh=Wtko04FJjmTC5xCrdr305AYA/Q/F3T94FcyiRgLwTdc=;
	b=K6BjZqpMz+IK+CsETn2fCfnfM4HQItgiRshB3suqsUtucwYGdqYMqvbYE/8MnpCX
	nugZaKYoTPetIcmjHPm26Ub4QIc9dPBU4cVdQZ3yIt9KsA/ucBgF3TeVTV8ng3Z4f+Q
	WvxNeJUvo7nJS7Zh/iz1xeCMuf25Sty4esGkbnK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652972579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wtko04FJjmTC5xCrdr305AYA/Q/F3T94FcyiRgLwTdc=;
	b=YR+0JwBYTIcn6/FK66wHehGT0DFiPBoy63aiS5REmIRT9/8NwMMLcpnLuUdpakua
	SpRwoBDuA3bpLy+ls3B5O4GlkaTmg5w1/vfk8ya9xrYhTzdhCuLMS7ztQRTru12vzqS
	UP0USg8/dEVU3O1s/SedbhNlsyv88EF2f8rkd58E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dcd7ea13-ff3a5059-a866-4a8b-b124-c5223e605af9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d77007a4524554450ffae3354932366d8869f4788afeea02ffe638d0c46f268
Date: Thu, 19 May 2022 15:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652972579
