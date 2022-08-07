Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5887C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659839452;
	h=To:Subject:From:Message-Id:Date;
	bh=ycGFsb0HzblzkljmDc+5xFyfFtB9E3jQyTx1Gpf915c=;
	b=DiYQn1sCX2IHe/tyBHk33BWaw71OKka0jFC1MUhRgXEzdIregCzp41SqXcKuNPHt
	AbEgyk+wFguDESMuX8dtESalaUDxCS4qBpQTt0/nlzbx/tHFC2o8cymsdT4Qfz9TaWp
	1VWLIp8iQX3ZOH0QSCOxGdbF9DplfWmg/vR0+UrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659839452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ycGFsb0HzblzkljmDc+5xFyfFtB9E3jQyTx1Gpf915c=;
	b=Z83P3fALTC4JUOWwfEXaeIwK8wyCSHTeMXpyV91m8vH9xAArUiaMQdbhbRI3xEAf
	xKDd5lkU0802SD/Cq9b1pMC129iua3YxXgnpMNnHqp2uBTcD4cm3PkGLlfYEPAyMZtG
	rRKvsdb5T5shPSf/u7Dll+obqtEwGP1ApXQssIFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182762415a8-16b2657a-b067-4dd5-b6a8-4469c4bc8c74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a566a77c34cd19c59aa20217d2a6100ad46b3b01b8fa92fcc77ed8df3a2cfad4
Date: Sun, 7 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659839452
