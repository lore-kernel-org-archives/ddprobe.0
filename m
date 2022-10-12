Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE40C3D63
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C50CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665532853;
	bh=fPBVw35tG7ewcKpYOv61qEItCuTTc2l55zd50beDpB4=;
	h=To:Subject:From:Date:From;
	b=PtPfDs2bDJeZtC4KsxgbTOD6GnJYR0EBAWFzD7TIfzRR1eoNo3fnw3Wj3iMUN3dGA
	 2h1feijRLFA5k8669JNMDINRS7ojsOl1edR7VosXsgzALGsAz9kuU+qzddtccN0dq+
	 Ue7+xQacRldNeTMaCriwfylDskH4p3hjPjLPLI9oIUZ0nzxS/jlLER1NUthLZTzIdB
	 FVf8Z1Qg64SG0y/9KlUzbNOCqXX7JMSzgULUrY/RNqp47qEdxydPW+JvzzBtoHa6gc
	 ACr1pSpqtVRL+iicHXjf+erEp+DvThC6TDZ9YdZnWngeyIdeWuJTd/O3sYJU9iG0cC
	 FHSFwGSrwO1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AE3C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166553285332.13981.17613827982825591563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa9dc6ab1c70f64cbe823264f8dbf576372d2d745201f14fffd84d0e78a350f
Date: Wed, 12 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665532853
