Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A05C536D
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 01:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07553C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 01:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689296409;
	bh=dHzMyTebaBwGT55j+LzpAOgyp3+fJkvbOJTqdoPLCaQ=;
	h=To:Subject:From:Date:From;
	b=fQuNkgA+/ldVbCFdAtPLrfO1XG0y+126yIZuKQHgspx0TTlmYOAjbqfLY7q4t+RN7
	 OgyQGDPbbPlaI+XvyAsquhtn9tyjrzVOxjCHACgeOvy2hmDG3cRBhK2sj/mibq93mG
	 q2F9AlUObyM9h1hddfNZBTucgOFGSWZsC+hsTtOER1L8h1dM6c8jcvkErWdaeKR8vz
	 70z6LmDfVeHZrUHunAULfwRRw7aWTJT8GJjZOpRYM8R+PLZltScNvXcSrmhAPZuv6A
	 J9nOtfkY6OZASEG9+CG1oppxq5Aa/bB3OnU3zOYKniEKwchRDYO72x3KJQ+IqdxnUd
	 vaWkciV8UbkmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2D1FC001B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 01:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168929640884.16165.2931861046547406400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8dfaba3b1ca62aaca806888bca7debcd9642605ef0f6b889f7d33069c7e6f34
Date: Fri, 14 Jul 2023 01:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689296408
