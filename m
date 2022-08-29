Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79583D65
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A9AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661778652;
	bh=QBtWzD0aEOdzfD4TfW0K6BoNMs7Uu4ZKu9d7vUpKDRg=;
	h=To:Subject:From:Date:From;
	b=kRTBQETqa4N4X0ojik/QVM8wWWVeR1HbYaOkneT1Vb1XxJ+gibRC+qizyiqK99gYM
	 3DX2oLvFnESvZhVang0YS1KYaI6Pp7MIFqmD2VHPCOTeyfeZ1qHHQfBinMbWJwt3/7
	 tik4XxKj2A0gsOHIhE71XU0ZFxJPKZmUARy9mKom4k23+ckAuL7zwg2y4+z7dvybzt
	 HxXgnQSOlsUg59f/vcUm3IOuE/Zbp1dsMZAvyUvtbn4QX8prhOB5bzu1vX5x3N+Ac6
	 GzQU1aJ5GQkwlGAk/B2Rtyh+G+6nU4JET4kV6/IQVRQYD56cQYyFGbZL5BAT3quAxU
	 yrHfNav6nKakg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C85ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166177865239.26427.7189250556239817313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c700ef29be6acacc94dd49b3f1d9f97046483e1de72fa0404bdd04bcfb5c4bf2
Date: Mon, 29 Aug 2022 13:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661778652
