Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134377C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 02:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654654919;
	h=To:Subject:From:Message-Id:Date;
	bh=tNK/Dqm1pvEuyO8exdlfiKsIzorTbJH6rCbv9md36Ik=;
	b=V/WL1GLZfBgFxGsGeAunL1isqXflSm77UzkwdBOOJRq90FoOWeGi+ANXhzV3ihkU
	9kTSviKNnTSFXiKsYeZ8LkhaOG0hK7sIzxKQJX/2b1K05xak4UQ03cJxcdmEr47EChu
	mX1z+tOgrFc5UI9TaIvyjV81siHe4TL9QkT0vihM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654654919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tNK/Dqm1pvEuyO8exdlfiKsIzorTbJH6rCbv9md36Ik=;
	b=HaFKXW47EmeMzk0XMZ9qKlTiKfa3IHF9knMRHFoBm7HGuXHnv3Np5DX2AJWPEUex
	c5Srwzm5YjTis7YCtXz+h7S07P/jc9bMrK81ioyk7D7y56ZkER0qFknrD+MODdYYzGf
	8hQUHwliTmzBMRNUpRw9f2BTl0hmCONmiQ8OiFk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181411e6240-a0b963d5-0244-4c01-9453-110f824083ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ed06f3017025474171ab5fd6686748ff811d2b6839355c12819824cf8dbffa2
Date: Wed, 8 Jun 2022 02:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654654919
