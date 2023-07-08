Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6B57F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 01:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A1FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688780228;
	bh=KyJ5iAvzuvJUtV0EX4Tl7SADnB4cQi0JHcQZTZeBHeg=;
	h=To:Subject:From:Date:From;
	b=Y7CRA7XAJweZztDip5Ydt+SITaKmRqbYQeCHNtiNBjIwHAvKmDvQlmHkZbzyB84VM
	 sLI9NMdjy7cBpSrgPUyKXOE8x3agrutdHG2zrz5KMBkSDqmx+jHbfTd8BiM8qOD9Sy
	 subsjC6U5oMP75tlO1KQIlQVL6fu4kXO1Vnpjz1GRo575SAbcnMAw87yg8C3M2tKKQ
	 5MOBSOs516oG6WmYpR62P6Nk8GhOXO+0Br8F6sa/m++NX/9EutToLrRDxXuABjiYsa
	 +y5BBh5PzL5qTV40Np5BrUEgNT25CSYqZktqj9v/eXYF6zxhbGe3ISm5Knl0ifWdU6
	 rgbXT+/wcIsCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A8DEB64D9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 01:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168878022872.10615.15792919659057600688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68357b5ec4fcca71aa278766729a0afb2bc219d2f734de98791c743239f34fde
Date: Sat, 08 Jul 2023 01:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688780228
