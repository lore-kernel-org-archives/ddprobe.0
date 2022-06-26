Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611277A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656203812;
	h=To:Subject:From:Message-Id:Date;
	bh=gZzUJzpJ6l3Rp/TKZoAAWBUKlsafJA2oTILENlO38fA=;
	b=ay92aphYrbcjarzugh8II3PfTtKN/bgosBIPECA/IFLheE3CYDgxo/L+lwD/iMKo
	bnvhtaKI8LFwkR0b+RTXBGhvdzCQDDO2WFJH7RhE8Mwyfb8hCdAjYu5Mf4XXsDP0y0y
	fc8/rwCOEscR+bahpoJQOSZzbCWBiTWBcep5BrU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656203812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gZzUJzpJ6l3Rp/TKZoAAWBUKlsafJA2oTILENlO38fA=;
	b=OEVEv8wJkgeTuxpu9vtRXS1QsapSguU/TixTucd/jduX8mLTAfkkX3HjLaoUVwER
	SPNwx4ZKwSGB/pb2YJuLav5fZboI1lCAxJqpd60g76lTdQHiWDz43is+a6tnjDKigyt
	vjjiebQj+jeXTcN5AugHISjnuKaW4BTx69KX2jPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d709ddc-57ab025b-5ebc-4ac4-8599-f5a43bb63c6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ee0a4dc8801cb1659f5266e2a13424e2ee530b1a8996ed880f9b3554fa11631
Date: Sun, 26 Jun 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656203812
