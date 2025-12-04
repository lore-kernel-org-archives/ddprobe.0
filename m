Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494F0242D7B
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764819774; cv=none; b=FZbXZhT0+UxmoFfR2KKsQsZ8d2uqZPLmNZB23DaaV72lQcdrChGGOn3CNb/rJEJHwUk20Y0T+yM2ZT3wGCqo4Kx8TcAOjA88OEW6029klcBdH3Pz5S/L5LyX9+xHDIOvG+3lLJUJDD75Q6BAq0UTsogyOLPStRbOr2K9y2IMBbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764819774; c=relaxed/simple;
	bh=iooQ8EZN+Jzsx9yW1gHJYYciiaruVn4aZsEbVO1o7nQ=;
	h=To:Subject:From:Message-Id:Date; b=oDoBb1Q9zf5ItEmHIxsHYY4GtLZbkk/W8Hca7NmxEeV6gUT3nLOXJuyqdAy9a3OPFC1Muu/hGTIIRdNHk1z0H51TvgD9pl0SsQFal0/38PHlQob9CDvO/wKFDHSBrCM1XmklWc991/R3tCycwLUrjBB/CyVnZUrJPy45jxRnSz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wcz4KNU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wcz4KNU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B795FC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764819773;
	bh=iooQ8EZN+Jzsx9yW1gHJYYciiaruVn4aZsEbVO1o7nQ=;
	h=To:Subject:From:Date:From;
	b=Wcz4KNU+BxgFHg8tnwbJJ1xmYqSpurqAOyZKqnKH9RmiX40WSjLF1AIS8FmQnc92d
	 7OAN/uSkuF+Odk6gxrWhTpN8dFcTtCztToIGaR6lZilZ969RX+4gm1bNngGJaJxvPN
	 IFVl/ctNP4wXviZk6Reu5lUFRfBUjsTmJq5aNNUQAag6sKbfYbXqcZOcI8d3F8oVZu
	 OnTGRwfFWVDhrkwv097wxpWIJzv8KsgwfN/cl5ZcAUMdbooUhYDSHCyGga+TZrlgKe
	 zY4jzF3LHmMKVnzRmNhgE+S2ms1X86f2RCei3/3giQg/Fm47Te8nevvy1tKReKSMz2
	 zL5cWB3cL6Hug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B047D12693
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481977361.2123.17200247139843652418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead36a1b602640254d0ed987525aefc35db99a435f1eb4f23454c45a029741fe
Date: Thu, 04 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764819773
