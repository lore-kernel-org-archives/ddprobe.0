Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D27538E
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658858452;
	h=To:Subject:From:Message-Id:Date;
	bh=o9N77LU+gqimAy8g8RdFTz6a+Th43/yR47AzTx+MRu0=;
	b=IfRk0Bv5TXxfz09xtJ5ggk7XHjMVyQy6lXNsolKXmlCfes1eJg2A0m15BF0Sqaz3
	CM9AOmB/lJxpmcs0MEKNF0HQ5UhYDJ47cu4r3b7zZRYxZ1oPtTxOw4MVM1d/Moa37km
	dDcNaH0W3LTAIXuNUXShTONX589GfeDHZPfZ+PrE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658858452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o9N77LU+gqimAy8g8RdFTz6a+Th43/yR47AzTx+MRu0=;
	b=IZ0l0cJJWHENu+T58XqMELEBje9oKn1ayLDKX0tdvNciR5O2xOD1YgQoZGVNiQ9q
	urii+QAz19sLMPQAfjs6emVYl1WjDCsmckS5Ts5/06Y0f+sxQmoagbzqhUX1eXghc8b
	Cq1m3v/GQHSlF0I1O3f6rUceu8Yu08FDyqImlkKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823bab3639-00c69a18-0d9a-460a-91d8-eab50c3c65da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0e1366e79685feda9859a7be9b19cb84565610429be6a447aa30cd589172ae6
Date: Tue, 26 Jul 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658858452
