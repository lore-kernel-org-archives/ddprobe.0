Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183B63D7B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 23:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654127759;
	h=To:Subject:From:Message-Id:Date;
	bh=EvUzK60EWwt9bqktOkOSNzUIm+HqnH8qmBVPVcbgtk4=;
	b=CxqsmB04AeQWumsV+6Eyb89qYgye+h1UsvATdh2fSBAnWMYMKuZukwLNkHHC10Jb
	jjT1gSa1JLaZcw7mDngpxa9/CNPFXoXJBh0FUogCiaqjE2c6PUeoPieHgrPvAjgdLvG
	zK2jUiwOhKM2ht3naO0Jw3RvgrFi6cs38GeUKIQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654127759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EvUzK60EWwt9bqktOkOSNzUIm+HqnH8qmBVPVcbgtk4=;
	b=WJaNEI5oEOCO45GaNa+PkjKj9PvtPPmfxXnG+GcRGyo3FhrmTWmtleROvSZdVa4q
	Rldf2YZjaIhyIfGzzkhbdri87QaPOnSWprKFl6oJy6EcNoWyTJahc7ymY6KnjGQkrGJ
	cw7yrMg6g0MDnsZAefd8I3BQNAkEkb+u9vi+FN14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018121b28f8a-74243bde-e5a3-4578-bce3-8684fc5888ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f2363cd893964303fae4b2a4fd75cf7d8f3a6deefeb2eed6e6d48885c8cc096
Date: Wed, 1 Jun 2022 23:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654127759
