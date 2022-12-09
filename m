Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D582BA3F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84D43C433F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670578887;
	bh=Hj2ZHDuP/225R4rTSSVzn1TVzWDJfo51yuDlhoOV7S4=;
	h=To:Subject:From:Date:From;
	b=lTWBHAVSDZf5lgUvw4Gb8x8Bea5/YX8MmjOg7JlcQt7zC6o704djGCcLmzARjs9W7
	 m9SNOV1CB+ju8smhooXIJAXvQ2uRjgz+yORppgpGCHv/x8DZRAX9tra+xLjwmtxljG
	 Kmd9eSqXHeyrwkjFoBXnpaa2ZfkTD97+Kb93nSDvc2gKG9nE9oNhS6TAWYv6iCsRWR
	 9OMaKxAIA8EcLmATMqL6oKWPU9GJLX6EDwZyXxsA4TiHFlq37fbrWd723/CqWJcvqz
	 ROD649zn7f8cNN04mn/gX0UYbxzTxhgh0Ooa3WASkqW28tHav3cSZWXYKRQLuhRloR
	 nVcvbtXl7GN4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C359C4167B
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057888743.11957.8253860194703749257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0943e430f533ba626d4463a35da071bd0be22b9d5c359749be693b15fa701c
Date: Fri, 09 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670578887
