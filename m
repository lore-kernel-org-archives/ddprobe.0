Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE5412B96
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 19:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjP/Vb1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E11C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 19:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696794428;
	bh=Bsi1t30CexrMfADQ8TvLATs6P+npyUJ2HOj/RYQj0Kk=;
	h=To:Subject:From:Date:From;
	b=bjP/Vb1yKcnTbUC4QjOM943arEkEjjhBX35qDsBUXJD1JAnjO/P+E6CApidGIygxE
	 V2pZHPozodZD3LxuK666/pTfhJ1TBHn93II5pv6h47HsgluCA4W4HmNhin1EleocS7
	 ZQ5C1jaqgjiZEW7iPC/Q7HOZkw7+gzq5l6C42YwWee6P43D+RDu85AEDu1w41MAQH9
	 q3wsWQIzBDajZNri/8J/iMp2LZdrO6NXtnDyGPoKYxH9BO/sENuEet1wQDqz+9he+l
	 UzTJkQJ/t6Db0hVfNHI5PHj3vN9r/rOrD5XkqpefasurYFKX0xM+m7o8JbNBALBH82
	 rhlANJ9LgNssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAE8E95A80
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 19:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169679442874.9202.10825212118790832942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656ab436aad9c09a45aabec57367e6cf3a23b5c9d29ff5fa5d7d71af24d0d33b
Date: Sun, 08 Oct 2023 19:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696794428
