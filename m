Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAC52564
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 17:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EF5C433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 17:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691947388;
	bh=oxQEv5LVbX7hg8eHWDjlbymt3nsKVWEfu4TZXG1S50I=;
	h=To:Subject:From:Date:From;
	b=sNqpFoE5ME3kF7LGUaOsJrFGyS79v5ohxfcmhJDPlQX434oiidYEg3x/bFsS2yDde
	 /YApdjns2VdQvDbbF2D2d+9+dXA+N9tvSb24zKe7xjiJu0KTGM5C0dYj0F1PwXccyD
	 qk+QNgE3SE4X3WCgRPcnHATStou53JrtH2vFH/OGdf8RLdrYyeFTVy6u3mfoSHUTOB
	 KVhLiVwhG3rwCe02QmzyC5DtwQquVBr6dQtwPuriJkqOAGWUXGYVZjQXWxN6PtJS0x
	 ffyfTTu2EYoCNIWs+9uMlBt/FRcs7WXXZyoJhS1fSdv7jYQXluh352bxQtfaczzmdt
	 A3YPBj6Fdq1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C44C001DB
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 17:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169194738868.14443.14840480350711044847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341a170848d9ebc06073f7a1411e5c2f82ac417e1ab8cf0b3840effbd64d8142
Date: Sun, 13 Aug 2023 17:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691947388
