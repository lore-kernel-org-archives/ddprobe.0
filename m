Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A675A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658897452;
	h=To:Subject:From:Message-Id:Date;
	bh=zBVGDKuVxTll2bKfMQ9vloztkyufblOnygl0CAkRe2o=;
	b=SKn1AznM2joIAdGQdHAA1OBAN+8+ut3gM5kaMgyt+R4LyeMgjQ4isZOD/eMyGBgl
	CqpcLZO07WiHnJKqGr41N1pjcw+QJ2sxs6YzPHsg0Lv7+pvh8N+jwuya6ApgvTmu1YV
	Z2FAQSd264I0s5tM+1Kpz0vUCpx0v+jsdGfftwPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658897452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zBVGDKuVxTll2bKfMQ9vloztkyufblOnygl0CAkRe2o=;
	b=EXuBMm6nRNyxcejin33PlsMNGKSwh027mHcCk9rs/cbq3JqVLtHbVJ5QWCuGfIgb
	4ytpVtBigQNBJF+aZeCzAE/IgjaYREboUP4TB/avkEwRQXLzxCUjxwGKVhXO8qeoSbo
	NdvJeDk2GIWZi0UxVVFmIhZ9JwNl8eh1wuDWDkA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823dfe4e10-29caf5d7-986f-4888-a053-30ac57a3eb4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c060d2a3fc6c12dbde00c1b28311cc8e5db846f9ee263b20bea8fdd8c361c62
Date: Wed, 27 Jul 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658897452
