Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1344F2C9D
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657797412;
	h=To:Subject:From:Message-Id:Date;
	bh=sjb3K2goUVagAYvJEusNEbYQUgT35QIPglMResGKBl8=;
	b=IK2HT6+TKw8ZgMUaZ53mok96AxS4ghHPc1zSY8wDKcUhr9KeX52+HXa4mwBStO8s
	ZAwWdkn1eKWjEEs0cdyVekMTvhRx7pKx5kPSdzhnLyc0xnhPUifITD30x0Mos6hKSUC
	o+8mMCbFBI2ji3cUOGUH7omA2g6EfnZngNmWay4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657797412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sjb3K2goUVagAYvJEusNEbYQUgT35QIPglMResGKBl8=;
	b=Y2JSYPhmCRTS2BBon9UDxSCLgWUqEBb7RjzshaIcDUqrXKjxwRDCDlBM2nkEUVTK
	2LaD064cXTGuiD66ZAs5h1m/MIFFsehWBJ7jKm1GLCLTaJWy2ZRcEidsn+0SN69Kdvr
	I+Fhtv8qMMdlcHxuxeJQ46jCo0infNuR6Wi46N2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc6d05bd-d52aff57-db70-4c55-9f1b-eacdcf0f16be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e394ae7b61ca76e6f1bdae12fe3b7615abca296fb5c1a18da4c19aeb9ec5dab
Date: Thu, 14 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657797412
