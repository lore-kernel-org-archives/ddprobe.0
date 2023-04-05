Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4186329A9
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 14:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16F7C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 14:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680706025;
	bh=ZvcXQEKAXCvRi4pbQmYHv0QuW1npGFyVkPCkBPC35lI=;
	h=To:Subject:From:Date:From;
	b=Bl/fQsnJfIJWHvyLZtXvvE//2DM4H6VVQxvZ6qjdZJh8t7yqK7s3TscG5qDwpBUmg
	 vP3B2LecN6Qv+e8dccsOaETlVr2+Bsxzl6N6TnAlbajsBY5+eb0vvWHA+v7g/Fh02Q
	 gr/jY3dguEBuYGG3oUsB3LRuDbMIKFU8sSYtMi9Sq3azaR4LCU8hWD0/nEQ6/kW4h5
	 zGehhg4wwZyg2RUgxcAIz8wg+EzbGqTVqV0gf5zEDWDJWLRenxc/mgypEgn98eZ0IU
	 3HxH8ESRQcPrZ17BgkR4dV3Qe2Uf5cejS2Xp0DknEIDkvy7F9W08LY+or7XJVB3jZh
	 nO4RWDgQtoa0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E0CC7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 14:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168070602577.9811.14237594485618716716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffba454ba4394c592d8395c5a48739043bd02eca7d596950c797bd4be99a3f0
Date: Wed, 05 Apr 2023 14:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680706025
