Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC44621
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82731C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670553087;
	bh=inQFjvm6D8s4MLqCS0J7cXq5eIkL6nFsUuFf+ech+qE=;
	h=To:Subject:From:Date:From;
	b=P29iVxDrgHKEPcRvIHmP1VgLKsBjnOIMiLqzymlX30kTawem/e6dm6XYmeBrQiyHh
	 N6FBR0hCTVQIzSzyhyUEARJWGnMEuuQtwUiSsUyLN0L0Zn435tQFTkwtqEnbu5VlKx
	 oVxFvKo11Ch7odY/HvWx6lTR7SovcEI1DORYjgJqpd51u2ue9VFXDwEDsGQ9zAjiKQ
	 EyCstjUQFqPlP7sLpSpuu13EfcWIGqou50y564np4K33KOdlGr3KBmNYUrxVK5Auxl
	 +uAHQn0PzK/z1rFowKdUuwDY3hItyPzLP0gM5mxDS/mafddIPR679th8BkL2LYqp1U
	 Z7zTJUs1RllXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63793C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055308738.6050.17733925908278498189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1a24a2d98e564a8d5708b0ef449e8fe1f28c8d46d99b816ff4ed69acd13c53
Date: Fri, 09 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670553087
