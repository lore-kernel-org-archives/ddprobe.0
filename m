Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F1B18EB8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0SifSVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3F1C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702682296;
	bh=ZtuNgnknZuZVOX4YO3kmD6GlNPhor/G2TbFMAAVrTL0=;
	h=To:Subject:From:Date:From;
	b=b0SifSVA+6kWh2Ptclb4UGNsMaTOoGOb2GfPoifsD41ClVNk8wegvU0WQSyIfDvTR
	 eQ0PhwlyfUvgjGcyb1HdQe8YQIggrdEVS3fLiUw8rQGGdHeGGalI0lHNUwD+/YspFq
	 k/rTsqItrI159jzsghoVaSQ8HmhC2niP8sCyVAmg6FAYGAnEX2mxEpt6yF+jb8DLe5
	 YLgnO12s1RagveDUX2f4Nk0RRxaedJktLI2GYzjsktAHuPPqlFIzEwUjHjGWtJF5Mr
	 1VNGIAgk4gKua17Uzyn55vd22IhYd9C1SbISoBYSJ8QupDVQ5+Bx5C56r3QDiyvgv2
	 ZNfeWBeH7mr1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7C2C35274
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170268229637.7929.2424400798180964274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22668736b2151f2aeb078c7d65f36cfb8c1cb2100ff8cd3f556c36d1e26ef7ba
Date: Fri, 15 Dec 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702682296
