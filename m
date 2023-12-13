Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0276025565
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2oLoXKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A06DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702493296;
	bh=8hh6RosQYzTOGnQiwsetls77GinMAYdRJrfSZ4sY66U=;
	h=To:Subject:From:Date:From;
	b=N2oLoXKCqeKewY2gkiEMSkEqPv8JZoXVHLA7NfYLEJ1rQn7wY+c0HZPzj9I+6aCNd
	 CxRLGhI4mFc6pcST50H+BpJLCye+xS2aWT3o74HaaC+Bd9MX3hvHXkb7liI5I2fZay
	 ya7flBUCnhCZ3PsvlGMxZGFrMXV+po+mSICu85JRYebinintU/o2MgZQvOZZSaapxR
	 QO+NTF/NsQG11XUFpBo4TnwYdTzqp7wqtPPtG2mwhAbsd3Wr5bLBcNRAIxPQz+i7DH
	 n3C7eBKcGhNy0s7w9kmX4uv+m7jG5mfF9KetHhnusxRm1NV8lwwYWcFng7ik64028B
	 mCSuC965pyXLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C75FC4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170249329637.4950.11778766801200198253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85a0aeb5c1f0761ed6c04e9ea4eeaf1e54cd2b31ca131b888dd91784ecbbf70
Date: Wed, 13 Dec 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702493296
