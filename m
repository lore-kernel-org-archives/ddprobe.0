Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8827C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 06:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654584119;
	h=To:Subject:From:Message-Id:Date;
	bh=XcMUIB/GxpLMJwM10AWm7Y4eqFX302qsCg54qqE4ATk=;
	b=kiVfFQ2w5TD3VH2+F66aSysmxwZobDNeduVOK8381i3EN9n4sX+slVGTWF0HxL+j
	trDZGNvtW3HVqkP6KHfVeZ+BIg0be3S5LcXRoyD5DkvmZP9bQATAfnd4FA2fXhuEroP
	e5pygE1eg8DYaBfP8GBPMvHBheGxaG1Uzl0M64ZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654584119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XcMUIB/GxpLMJwM10AWm7Y4eqFX302qsCg54qqE4ATk=;
	b=dSfMCLlsWUbNNEN3XYPKQoZP6J0guLGqC22fM1lfPrZFKr+BpvWiE2iXG80zgLVq
	INBfDAf6podgefvpzLo5dlIDnPlLFFsNKhObL1c5A9ivMpM3CIq5b+2Tak1Vxip+7wG
	Ln+s7nsi6YdBNDL0NWxWTLqI7+GY4Jto7HqAICwQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813ce61049-6df58d9f-eb1f-4ec9-82ac-775ae42c4968-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a063b61e49f8951bde8399bc0f62e2b4148eb7455e4f89ba7deabf590035af2d
Date: Tue, 7 Jun 2022 06:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654584119
