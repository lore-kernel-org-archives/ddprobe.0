Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580E623A7
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660768252;
	h=To:Subject:From:Message-Id:Date;
	bh=spm8dR09mWrR5piAZgUkBu+B4erhb4oAdQFv0AY6HNw=;
	b=e23cpDR4HcPj2h0ra3qUbLlpePJ192vgTp9R51gSTxPPjaLIcfGOyY2REdDZAP8P
	g2UR+1a+upW0ArIxRG07oNu+xnc9awYcQ62EkUkGczvaLlC5KjxpFBotRsa/GqJwP4h
	sKmFWwV2SbSW8Veor/zZ/d514SST43v84Ds2268I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660768252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=spm8dR09mWrR5piAZgUkBu+B4erhb4oAdQFv0AY6HNw=;
	b=hjvRmqPlpDgn4SXU0/Mtl6A9MASok9kY7cFIoZW/veUmEzqk5dWJfHNhUy/HUSgc
	3CEoz0/69td9fF9MES8/KK6rOkzt0nhpmY6IoTu2KLSb1AvJP4tq4GaJ2S/ENqTJJHJ
	ZSkI2DJPJLLlkJAQuzXSPZ+4Qs9ep0e0IC4N+90k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad807291-0e40d56e-6751-4be1-abc7-0d52cf82c416-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4397622b8e4202ef90974e6a44117fcc55df5602c18956dddeb903d4756c1598
Date: Wed, 17 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660768252
