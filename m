Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD12381
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB87C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668865254;
	bh=HM1Z2CqsidjfcwoEhC9QXNqeqZDzBNasDV8HbLpsEL0=;
	h=To:Subject:From:Date:From;
	b=O2l5lyxQW41aPpooFROruilsYZaW3UrStN2STwu8UjzkNzfnBcbxu+xihA3x+TSEP
	 jtV6VIdPUFscluxm3iL0kvKiuQfQyApAoxe/jfVx5pVCeIZ7v8D810ZM507N1jx2yO
	 RPuKGUesDoqj1E+nMNsjNb24h50xolFaEEAmUxP4c8QElCbnbEyLP8ZsCJSY5GAISD
	 buoDqryDu0pP6mvdZJPOF40M+VDDXU+kqxfzKo75O3BEab/VQQWls4sv33sT0mbtmN
	 db+NgVStyTm26IG+yLPdrVP1Wv8D7yrZsDYWnX9YBdomstyE5YB7vWZC9gCD0itrWC
	 ElX60gjFmrd1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CB9C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166886525433.5125.11070358973943885828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1e8c5ea9da1c771534d74ec992e46b6bf9903b9b7e2e0c765148aab775379d
Date: Sat, 19 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668865254
