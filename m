Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F85182
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657010212;
	h=To:Subject:From:Message-Id:Date;
	bh=k3x0EAPOYs6O9VxVD+0/W1GbdDj2b/l/IR0EDgAVoDQ=;
	b=GplPwfpoAoXXK4PFhgf8iY3PVb0BK2ew73yV+Buy45/den5wMnLrt6n/yWf0wsv3
	hwRDrycKjyJwRADeqOGBnl2POZyCBHzR3Yidy0AEgmqFV8AkR6552ZZDJlO4Hos7gTo
	dXCIJ2n3ziBcuctGO78HnUVOMcttFd3guBa5eAOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657010212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k3x0EAPOYs6O9VxVD+0/W1GbdDj2b/l/IR0EDgAVoDQ=;
	b=F5ZGTdUTRsyiHfGjcFwyupI+bd0DCz4FpD1KCJrvBqgNYWNyxl8pPenbq2vFEFnG
	cqWM89zW8qdEl603K1Xqkvq2Jzmh9c5tCEiB8wNUCtAzcJC1N3TzECJfxgJFNPYTVtk
	8Eywh/mYI52OqGh+vJUWkgN95czOc5+rFaf6VXZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd814db1-66272e39-463d-47b0-9806-2780f9154689-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6337b7fd92b321204ede155c94a7a9acc9b0fe8e5d04b1c65b6d279763d7effa
Date: Tue, 5 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657010212
