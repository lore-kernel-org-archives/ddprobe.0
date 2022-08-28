Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F7915A8
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67663C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661698252;
	bh=jWm81UcNkk0x2RBcIAS0M722QKUKnqoEA1i1Y6qPhZI=;
	h=To:Subject:From:Date:From;
	b=XVvuKz+ySc6yh6EVVtBEAmAbxOlJmjWmXLOz53zqiHl+gXvqxzC62Zv75OGxrKPSs
	 vEi+lHC0CFKu2l7EAw0gFuQH1Nqy7ar7/j5LmcLs9z07a4CTaOI7hG2CXdZRrTxJ+t
	 M1sl1k36+Xc02rs6fSgvRWzysr7GBxvyTBV92BVEjeLxTuvR93SmoKiz1uCbqHpvL1
	 qJSu4ZMvOPlWqHc9L9Gpc1qEi5+DPWqbHIN6Al1hH+iF+G9+E82QhKTT35/ksgMBD5
	 co1coDX4Ij2x3sempjIeIcQcKOZGcPXMgoI8JWByTqgyKVwNGTR7zXoB0+UWCN+AB8
	 iMoE5+/5BSLZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5194DECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166169825232.27795.17204649772047793061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69c9209ea0b92ad5f36ee44dd125e380d6ad42b1b71b37f395a537d3a094d45
Date: Sun, 28 Aug 2022 14:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661698252
