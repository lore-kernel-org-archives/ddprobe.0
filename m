Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78DBC10E0
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 16:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652716919;
	h=To:Subject:From:Message-Id:Date;
	bh=LgyvxFEwOk1Zhe9/rVPCPsWiFwLPfxri8ssyWTVNd54=;
	b=ZSU90aWkGhirjNbysn59M/8egDAtqO7hzYlOEphiGhak9u3uR+Ec6S/Z7iHVbBcJ
	OfTATv/tA2tEv8HVr6b3ET4IVJzDi9NGRPtDAT/FC3sNy2aKoZOcnn+wp8WWMsO0FrJ
	GreHCbTcmsIT3acBe3OeEW3Roy/iMDMyeHWEZxmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652716919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LgyvxFEwOk1Zhe9/rVPCPsWiFwLPfxri8ssyWTVNd54=;
	b=hIPVCkBak3tTcONVnqc4t4B7Qrx2csqqJ6emv8QuaWNPN9G0FhbkAK1blUZbQS4s
	Xc3lFZ5OTMeXSJnC41TRT7HrOmGAyBAaHuN3RQtF2SpRL2BOa29UxOTG3Rqsq0Tu/Ox
	3huX47TeQdoBX3oiSOcQmne/DdSQHe1TktMasEoo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cd9ada22-a90cace2-3f2f-463d-b842-baaf005643ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9f1e24a07992ad7dca2f6b50053fbd8cb6b0b1b3007eadf3f1451b6603e29a7
Date: Mon, 16 May 2022 16:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652716919
