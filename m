Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0077A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656530212;
	h=To:Subject:From:Message-Id:Date;
	bh=Bqb9JIMYMu/EPRVL1zNk0S4QcDN2PgHd8lDZg9SFcSE=;
	b=EEWxXvd6Vx7bisexPyoIwMopHRnaQoS2oHGm1aekTxyfNsdGQyr188ycFxjlwd5h
	5wVgZoRWTSRAZWF9RgLGCCsbEIbSk1/OQoLgSuR/BJEwwEkHTMOyZ/zkGliT60nhmpo
	MOb03x2fgWUEXpSb467UYd32WBVIApZLiXkrQ36Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656530212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bqb9JIMYMu/EPRVL1zNk0S4QcDN2PgHd8lDZg9SFcSE=;
	b=Ltbw8OfTPbKUAdjt38g5NKpp2QfSEfpYZOJRXIl48ftCjoqUgc9TftZbwOrid9q2
	L4YAMc+WenOlxxakYYHoscMuX6Y+/lJlWCrK1N8O6HaDwVKVvZqoKZniHuDBraSHvOR
	cqcsLfMo9PPUjKdUtaXWeQDdiOtZAb7XfgtPL2cg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0e515e5-cc7847b9-1f74-4fea-900f-fd0bb4719eac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d1329c82df9f340d78a773f6ab7f08def6629764c5bb38950b806aa7610afe6
Date: Wed, 29 Jun 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656530212
