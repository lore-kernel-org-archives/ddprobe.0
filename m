Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF27257B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661002252;
	h=To:Subject:From:Message-Id:Date;
	bh=rJ2i/vSu9civ7AGsc8t215518pwdfwNiT+fee9dUkhA=;
	b=Rq0JSF4WHhBnVTNx+Zsa9OJEx1xpu5Dz7XrYOiH8C8TFGtlyJ1yCs7T9cNazJQRD
	FmV9FqUrC3qu8H7Z0Y9uHJbK4sFR0L474jslDpHIW049JaUZ4mqJTzcUTWVqkEWk0lH
	xWxImKReuRI64GlkqsI+hYwYIPjzUKRGJzRFWmjE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661002252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rJ2i/vSu9civ7AGsc8t215518pwdfwNiT+fee9dUkhA=;
	b=Q5/mOQy9E3NUv4C4Ktd4jtlWJf1Tcc8u7Kuc9Eq92cidoH2jvru+87p3HXD7xpHc
	pK0qjAKQiSz6s7b0UXo4Df2ectPIasaolnnnMN77ijVdsMKhDkYxapaA0q2Hnt8HQSF
	T+8DHEau2Biii5MOffMM/kESAnr/LFWNK5t5yW68=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb730102-2dab4e21-1a20-4d06-9114-6abaaf17b4bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a36e573e1d8849312aee1452978d9685060d94a31bb590c13df39363ee9cbb98
Date: Sat, 20 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661002252
