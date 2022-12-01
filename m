Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B391A10F6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCCDC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669887654;
	bh=q22GYtncu3DHSO7VQhi1/KyMG1wql1lNdHpw1HLFw9o=;
	h=To:Subject:From:Date:From;
	b=UmGSGLAgWoyWyusTE3V/Ky0WD/3mGAqEZs14FpkHtJNWpTDWhi2InmQACw3qYFpmI
	 PBkFNO1Le8XP96eB/PHL7QH6p+ciA78fNXYJVMD7CHFZtGdLIZNM4jkM2xwMwhVyXX
	 2ZFmIW+WuIpr8qGScE1eVxtLIwCxLTqdymM0ykf3piK3G6qGwByckAh7TdNSIAFBFQ
	 YfRMwiDalhzKIhA1aLEs9cKf11cve/ZnMN0saAZ4Bn/foVpyolPx1etuFZu9aTaFxE
	 LBanOpTg6aYvNoSMyInJjqwNok8c4isgsmzRysVVyCUMWO6KsQEogSDjIMp24zklGo
	 eU/cBTY2gmPHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5201AC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166988765432.7808.12646965750938451805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930a9c3d5f6001e921e0073331cf9b2bbfb6db46552ecfb90d6de63d193bb2aa
Date: Thu, 01 Dec 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669887654
