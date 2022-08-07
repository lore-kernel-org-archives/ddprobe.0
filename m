Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E021841
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659838252;
	h=To:Subject:From:Message-Id:Date;
	bh=Tfifwk2hLEoK6QBFIAr534eYImNs92+EvG6FVCHcEus=;
	b=amrdmj3xRdkW3z4XS1KAPrqmkohuH2aNxOro2+tm4vD6/EEcuTsC1wj34AAHC3GC
	nGEkb1T0t+UkmvwPFaZ6sxs049rlRnMIkQKJLl5JwTXK332swQQE9eb24ut7twZ6nsU
	RD/1ecOdtpH7x7GbplPCyyWIQwBek+hzuOPiA674=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659838252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tfifwk2hLEoK6QBFIAr534eYImNs92+EvG6FVCHcEus=;
	b=esJm9cGEmd/RnCjOBuUX0/CRM6nKt41t0znQA4Up+zCP4wZcJKS3wc92faJwS6Q4
	7Zan6P/fWqOPVJrPh3POSXt9wia0v35f2T7inFegvGO8pw5xSKCCWwdBN8/NspgDD3e
	ev8x6VE1Qyod0USpCCcoA/bmtzxA1Wo9rxYUdA/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827611c60c-127a26fe-30f5-4de4-9c45-298d6a9f4087-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d21fadd45f06124e48b01b033f259288dbbf59b08c3c3f5fc40eda89b02f77e0
Date: Sun, 7 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659838252
