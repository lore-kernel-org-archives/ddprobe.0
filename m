Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE234C9B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658323612;
	h=To:Subject:From:Message-Id:Date;
	bh=bhr7XMYeiO8VlzL5NQzSxmdPW/eiuasskHFNuy3eg1U=;
	b=cQVrS82/Q/+QeZ1gJVCeDS5TGOBSLwTBMT+uzc5zwmzQVAf9k9GieMRjwwYEKWQ6
	RjNqhSm2qzhJKnTqX1nXo5vIi8eRPMegLyGporhlQPg8IRQR1926LrXibYQA5OHf6Mp
	hBg4hizpfnCblFuMBNyxLJ0cl2KS+fpJeuVq7Gqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658323612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bhr7XMYeiO8VlzL5NQzSxmdPW/eiuasskHFNuy3eg1U=;
	b=gqXDndiZrBQp5c1nLFx0HvFXHTco4wNC37V5hAX3XIkevD9rAgbKkhcmYtnH7CEo
	/BKOiRgFbetyMutUe7n19ijw98nqp8DaYEqoDgyclRq/Z12k64HU3pAOv5cEkPasgC6
	G7IrsKVmkmE06LD0dnW77hScVuRC8IRST0G6MuPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821bca327a-6e9033b2-9aff-4c5d-a835-d495b21dbe46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca3660929c9521dee5c78dcb0ab55a54d285263a70b24814af1f421f40b7549c
Date: Wed, 20 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658323612
