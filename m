Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF29361
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 00:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9862C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 00:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674262325;
	bh=+NBOzCSpoFZat/XLeRMDJ85BGl3wWTEUNAzwLWFlquk=;
	h=To:Subject:From:Date:From;
	b=X3Jwo1XObneIdXKD5IqxoBezBHzSHGoHGHkPcEGeQS0YaQ1baMIcs9abmISxOlUUX
	 Y8i3qm0z6j2+OYL8ckT2azJRysK4x3NnVXpVy6//fA3w+G6DwXaPHBnnMIKxIb8nK1
	 DuROE0owcRZaSTGhzvHxIVGXe34UtJs6qj6Y3xyUQKzML5Py0zCA86bui5yhSNyNjP
	 qcBpQt6W9znoU7YTYpjQN8vcn24ehMfKXEmfEjERGqScXGOW3OW5viOsA7SkPtem7c
	 WcHsTPf6YJDeM03pGS+xI+DxXJi4ZQ7pSrQoMz/xcjP+43LhTw6dX4vKSrGh4HeqJ6
	 E6u0R8M8Ni1uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3B8C05027
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 00:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167426232577.19529.56993037765901495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8271489ae8ceb37edf47d2d173c495f0a85cb2bf91ecdbf1b30feac737e7fe0e
Date: Sat, 21 Jan 2023 00:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674262325
