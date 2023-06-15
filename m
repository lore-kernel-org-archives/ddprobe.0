Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517AE171BE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 14:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFC2C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 14:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686839348;
	bh=lQiy5YQJEjwJmCU5bfSlKFGehBXFXV1nUEvMR8a5KCE=;
	h=To:Subject:From:Date:From;
	b=S+hJ9laErjDORt+JqQKmbJUxia0aQass0vBiyCaFUgedp7zvPTi4Xd2dOM+QkhW+l
	 P1d//Nfb0+Sg994MCgX7JYouKBAZA6LcYyWTqmkg5uz0aTVNz3S2b1zUrwJ9bU/RPO
	 sD6wBfzAYErZBsgsatCWciVNRV4kBFP1IQcwOFB6W5+U2eVfOhnKoYw5OSwPyn0mAT
	 a4ADHpZshdvaSlUX8ckTipxlQgRXZ4wfeNCNyn+a8QVebbsIQP900SUUdVNFd6Y9MF
	 vGgx3+Cv5O/E0RRvpxpWUwzCuQULOWwmYzEKI7Ssfy3r/LLFe/xNoTmix6H+BAfgmI
	 Yn5QbJ6fDKgNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE29DEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 14:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168683934870.28880.17676083699589959943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295b487cb28778e6d85b3c6ebfcbea196ecdf1a1e1b0a61fddeb5b52652734ab
Date: Thu, 15 Jun 2023 14:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686839348
