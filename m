Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C64A12B87
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 11:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28C3C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 11:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687258928;
	bh=OPhezWSA3cxHPmvLz156fMmeGwFRK3mUnrgw95vH7qo=;
	h=To:Subject:From:Date:From;
	b=Dy7s4vZicip9uf6pSevCB5SOO91IMJ1uedoOLG99wEfybKaX8QZUt/Vbi0kerRSQF
	 1chhxf7b7IW6iA03IDIWFhQVMfURncjHsfcrm9+/L6Nzl6T360i6ptSB199YNQTUtQ
	 doKm7y4Zu6r4liArfOkDz7p5AyOTtS7CLzUHJCE9LfyxWbdRqVjLuOgMm4fWOmpm4b
	 YlKXtVZ5wvTkYPglQDWIUkFfiE4o6NSz3s54t4ISKXCW/WhUwRWWGhCiOtZ+st1FBd
	 EQfZ3D2dPQIX3uzwEhRaqEpJPjuKcxgDOHBtJaNezjotTuM/UrE0WSDVqKbqnM6toh
	 23cN7bqjcuICw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2851EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 11:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168725892871.25321.17411474446199958487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c33fe0651bde7f6be8b2a9e2997878c1b6b090ba6f79b5b694afb5f6937381
Date: Tue, 20 Jun 2023 11:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687258928
