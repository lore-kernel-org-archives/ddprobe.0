Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165F820E0
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 02:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653186239;
	h=To:Subject:From:Message-Id:Date;
	bh=JBZx6cm+U/ah9AHsbQ9rLWSUFvFfk8fORaARO24l5ZA=;
	b=OtR64h4omz5ChXThy3HlQbJyvm5MT1XkqJRfd4roF7jFf0qc23Z1ghnudOOD4kuX
	z5AAkc9WDTEV1FSLYA6cUDkBaZKJP1UAK8jBZwsOryGFXP4sTlpH1Vs+ypaj2831eeP
	p0rHt2k9qsCYRsAx77EBUYlrfokRMabv5HWrbl6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653186239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JBZx6cm+U/ah9AHsbQ9rLWSUFvFfk8fORaARO24l5ZA=;
	b=LBlz7QQ2K/aFsYlrqq5KAVHlcPrPKZ88MWYEPm5yNuUGNx2hgTGoGH/jwtQ1zqYK
	0hFXaYyoy01wJJM2SvoXmqQBgvFWXl0C7xAy2uEfhXfpLhqoCCb6EMsoG3RH1X5OHrl
	z85R1Je+2rwjA1UuHg3smx4jdJK5q78rNPcoPXV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9941b39-bc15e5f4-f7ab-4d84-b080-aaebfbc5c367-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3762306b12ecf6acba960ac5f2f4420f2934a33c0b06425f3e3fda64883d978d
Date: Sun, 22 May 2022 02:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653186239
