Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1802560
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A7B1C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670146854;
	bh=A9YW6VhYxipGoVLtD4lnF2P9XbbrRgnlIcTwIYbT5aU=;
	h=To:Subject:From:Date:From;
	b=gtGwbS6kgFQ6IqZkSFz+1yCPsDEMF+lKcJdwg2Unt+iFsdXP3sxVSgNk2cC4Obvsz
	 5j1Z0/YxUIH6N1qeGWRJ5VvePYHVbD0LMcyBWNnwulowf2LmilJa/qu4lPTkSaZzE/
	 uQj64fKd9pwtNr2UNl9ayNVNRI8Bz3NMix2mIGPaJ5ENocf+jzr/BOqKUPC4uGM3hx
	 a231i38bdmpAWqYrisM2+a1I6EgXF9KVwLo8Zjs5Vd5J5Et9ojZRRYvLGLryWJ4+gU
	 tjvcepabQpNLlxjUOun/JGB4EobJuIUyoiw7yh4RKinJjTFBKEwcTvLcX61VI3vZCG
	 rXdY4ivp5GTFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A7EC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167014685433.25790.4905777123562990027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd20d40a56f6f25054a44a3ba417c4ae98667c17b1419216cad962402db11ee
Date: Sun, 04 Dec 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670146854
