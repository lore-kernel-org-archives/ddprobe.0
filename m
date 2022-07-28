Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE521101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659003652;
	h=To:Subject:From:Message-Id:Date;
	bh=whnC7I5/4ZIrkRmE779eLnottcVWtGoQqWi7y9MtJJI=;
	b=KiIaUbyC+vcyaJqYcFNKNocct0M5iY17cpATc7KaO1SvaqyFxro5FXMysNvIMdnG
	lAtGNO4Uv7g3qkcHDqkbCjT3cQo9iL7S6IDWC/pa0QAtSco+/Gm3rtXhMwBfLZIS+5q
	/5cXvLTbczvZzORC6wnWt4PVf2Rnh4N3KVdeQEKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659003652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=whnC7I5/4ZIrkRmE779eLnottcVWtGoQqWi7y9MtJJI=;
	b=U/lS4YaAvtBF9WSMKXiZKo9UDSkmUI87e+haSB5N9Y6lTaHGTiJKB53UMezVSVut
	RsbOSjt7OPsYvMIBqC9XzPWm82SzADk5PzYFL0kB9vwZbW2Lfsval4uN5OdmUWzP8Sn
	iobFsWN+w30Ii1xNy8zX7iLRNWthZ3Sy6Tnk/5ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824452c9e9-fc33bc48-dab1-4975-b709-85a5d30e3e16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c085726e7cb60e4f246c629cd3aabb464c06257f177cdc2e501212c32555a28b
Date: Thu, 28 Jul 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659003652
