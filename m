Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604567A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659040852;
	h=To:Subject:From:Message-Id:Date;
	bh=USq2h1DhXkBkRF4PAxdk65tqpP/+vRiLSKl49N4OTgc=;
	b=MYSRsOROo7Qp8Iw9y6iBauh/Wx9ydyO9GNmLL1OCeAl8smvDnzpM1eGDOviQhL+y
	6yhNBcxaT4wHr2SkUwTMM7ZasCD7yhmLbNxMIP8Nvcw03KciPm+frvRG/JF80y61lQi
	YBoTkCZ2M5W5KCd8vG/AktDLOUg2l+eoHzIyOgg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659040852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=USq2h1DhXkBkRF4PAxdk65tqpP/+vRiLSKl49N4OTgc=;
	b=L49Tul/kMDiKiiAII403NgfzEw0H+S/XgKP/GldAfbJ1J9r/gSmmfR6zKtNm3aJd
	Pt1LFmJkz69PuMYmo9p0linEWINU3ipxTJd8Nc36B2/bUcn6+URJ/Z3Pw8j38XdQdig
	f1tQqhPS1MET53O8vVV5qa1wA/ety3d/+jPKaaqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182468a6a36-7a476980-9f3c-4548-8093-b68843ca9eef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3760be39e82cfcbd222352cb11c618ea018027ae3347706fd6bcd4e47640898b
Date: Thu, 28 Jul 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659040852
