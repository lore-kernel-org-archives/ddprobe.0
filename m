Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7996E47357
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFFDEC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695833769;
	bh=FYJPlInI6QIELxRogbn7Kql6mLEaCOuI5Y0TC/caj6c=;
	h=To:Subject:From:Date:From;
	b=ViRLHkwIlxaHaPahvH3tSuCpiuxHRKZK/hgD99C2q5hnxjfT7EzNbZD2V9K50VH1p
	 8S4cnQR7tkDWtIqZZoMSRUkerlNOPyR65uGAYdzro1hDEfAttdosyB+tzs4sKlKZyO
	 VZJSwQa7NbWYJa/GFOPNJ6prMT4meYO93n4vmE4fv0H8awxxeBWxO++k5QSqPdfxvQ
	 4IIyvVUnd3Dgi3PGEMx/ZMXp3QH73T0OA5hajmUTFKSAo3KrGUXMyqEtFG4AC7jxfT
	 pbGWeJp0rJRYz2rJ4r3p3yOTo4I9kF0y/UFYvpgy4bIU2FrUP2hKYajOpwZZ6joMrm
	 uBpptz0K/hXsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B6BE82CAE
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169583376878.7307.7596991756660368860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6e1d7c781155803bdd518726b6ffd772898d1e1a5d9705c7137b5858470ebe
Date: Wed, 27 Sep 2023 16:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695833768
