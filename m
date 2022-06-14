Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA2C1851
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 09:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655200380;
	h=To:Subject:From:Message-Id:Date;
	bh=jGd7PeMCXHPMmu/aAsPVmEyWOXgrDl8DiRqmZdvLkaY=;
	b=ZR4Vl9IbNHDP4CEmHvgprJuys+XO7zBR/bumROG9RJxV05VcOi/cOgpf9sPdJVSL
	u1W4ODlC8wPsWIXmA8Wz5zE1uQgL7fWQ+F4tNpSnZloXlwdtCRT6Y39bGIrTaL0wl6F
	xHew0EroPpYd1nKCaCqCbaIlE4mLhnrq3DAent6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655200380;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jGd7PeMCXHPMmu/aAsPVmEyWOXgrDl8DiRqmZdvLkaY=;
	b=S3oHawXKeE+2dWW38vn7CGxUJXUlnWwnGf9QR3XyWvyrEC6BwSWuiFQahlT8atWc
	SCDYFEHoBdMHoEDhfakzc88mFxu9LHLm59aoXh65pBdflkeUqWN36fkoYoeJ5FYmhdB
	fB2PnkDUAGbBSaEMm6zOeWnVOpdjsY1LK1Okj0mk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018161a17183-f2f623f9-9360-4078-96d7-8599e1300d68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa4caa46166f258bd816868d4df423ad823d8dc7976a0784ec3114304e59d0fd
Date: Tue, 14 Jun 2022 09:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655200379
