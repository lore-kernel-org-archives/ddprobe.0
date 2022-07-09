Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C362EA2
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657386412;
	h=To:Subject:From:Message-Id:Date;
	bh=/aEGaB3HFmScW/OmU4s6pUv9oEaqDVphUXNOcIVI/cw=;
	b=Uf1zgO4vBk44R1XjoTmdFfw+NhsYyaXgyl99sWoxntWxfQ27oeSqARV8G7tpX/V6
	EsIPDdooljEg1ZRoFRvFYcfmtSrdA4vw0iAlid6l6WRK5E0B+/QexHl64uBcNOPoHSV
	T4ebo/BqFM5TwZ5Qfb4sRjExu/p9HCdeY1Y2GoYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657386412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/aEGaB3HFmScW/OmU4s6pUv9oEaqDVphUXNOcIVI/cw=;
	b=F4zyazDnnMRqJDlVIKj/hNcyEXvHp20/QzXQ71T7ccRtY0+MUTp/kB4BNoJ72pj3
	7R23/EZg5RSESPhB5oKJLzn5v4IckRRklrIPqJ/pKXfAeiPPdcj8AqV68s9JcbbFwsn
	TGHmUALJL3I0lIrjMxKZnu1JWdW43j1gJuXgdmjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e3eda93b-e6a8f0dc-7ae3-465b-b151-f4eef0814676-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffe159657fb343297fc3d4cfbe904e19e8ce9657597b013c8759c6193777d1ec
Date: Sat, 9 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657386412
