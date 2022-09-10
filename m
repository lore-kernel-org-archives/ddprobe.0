Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE08BA40
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F182C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662799253;
	bh=oQzcKqsOrp31jg0AY1MS2cbcgUeswix15Ei69KEEPsM=;
	h=To:Subject:From:Date:From;
	b=kO4tB3tF7sTVL0x9x+9esSc9oaO9qD2CspIH8s/dZKXXWAgniKwoaINcq9tG+d/pL
	 5FWoVElAMDNE1iGkBAi034Or6B+1+m6vRvBV8lrLLzoOQmEReH8RPMiBL9eAcE1oOk
	 B1pi9VrobQhH7ECb6qHmNqGMYHNdLX92sJbsCuoD7+LLWENYReKLy1E4RxQH6slHBe
	 L8AnY1mlWYbw3l4fuM2ilGC6ia5CxOYZ0VEixwPN7qmho2BGG24InhBvKlmf7yl9h5
	 g5R6Jz0tgfPu2IH6oQkSBALki9et7SmN3iBeAlCv8lMLA5MkyJVqyX5aVtmUVkvAaQ
	 56g08csVeyxNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53968C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166279925331.10100.17604221000132207756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f4ffba70719d6764c1e78b31bb60288b7bce94df46f549d804e3b8f3298b13
Date: Sat, 10 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662799253
