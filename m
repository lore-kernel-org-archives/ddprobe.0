Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E3F638
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657969612;
	h=To:Subject:From:Message-Id:Date;
	bh=Q7X3L3bZ1e15FIpBTSzcw5lRpcLE8g4G2clYrtjcqDY=;
	b=A3ZWupVD4lhZi3PAEqzKZTfyvDVE97oxyExcsLMIjjyVvTAfaBrICG0EJmm9AG1C
	GiOeE+F9NjOL9/Rso/pbVsye90uCG1D9fGk0na4k8y0GWkST9OqIJzUCDxZZSK4sNG6
	EnP8+zG/zvwjTyX36rmUIrh5rOvgeGI9B/YHuJOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657969612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q7X3L3bZ1e15FIpBTSzcw5lRpcLE8g4G2clYrtjcqDY=;
	b=Y6ZmMKls7ehUPvAZVHhTJKUOkFa1VE35mBq3BIVP3Jfb1zN0S/Lgit9m0VeJ/Xgt
	UVSUkepNQqQ2SPNjCtR1w/rQlE0KAO/UIsbE3Yy3S988alj45IsCvVZYi5oBTebvYVG
	ysUDkx03Fb+6gC4k75eO/LPiV3dtIprcajBH4ZOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018206b09621-d81379a6-98da-4658-8c07-052f722393fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92214ad81e7d1ed4e623f0ad6704f884b8a931bfa4b0214ea5d80c326842f2eb
Date: Sat, 16 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657969612
