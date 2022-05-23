Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1373336D
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 04:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653278939;
	h=To:Subject:From:Message-Id:Date;
	bh=rlHmvnUAQTmWUz64uco3Y0pNq6I0A7bdFClQeqkgENk=;
	b=Vsjtc2KvHhhIjwo8U1Sa5T417y+VkD//VJhbVnyyNVL33RaBvljAHcUDqPf/QTqU
	PylBheumPOgY40I2ai0BdYV0hyAyVwsjMecNwIqdmFwdf4Dy6+LULNGh3Y5QEhUYgRR
	HLv/Wu/nNjMzo9ubsIrL/B79DBPzKlp/SYKDxfxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653278939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rlHmvnUAQTmWUz64uco3Y0pNq6I0A7bdFClQeqkgENk=;
	b=aB73/pbPSHvt+UZ/535g6tQekm8dt5UlFRxbvEWFI4H/9VAy6dXUJ7LJI4Sueiqy
	ahXQv96emZ3TdoBFZDDxZZ7gWZCRyj3TE+3oA+QSADF4OSaFElnyKL18LotgJW0lInE
	ykVStybVf2SkmxdI5P2Q7Aw2YHZg+JGGC8Nj1rd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ef1a9897-7f78cfec-3e1f-4ce8-8be2-fbdf14f6d60f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c90a32d4809e828924617369a148a194990b3cc04f22a114a2d4652c7a9855a
Date: Mon, 23 May 2022 04:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653278939
