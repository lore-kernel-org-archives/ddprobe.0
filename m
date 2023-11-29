Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124171C68E
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fP8bDTIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77462C433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701298696;
	bh=RYOu/GfzHuFpN39NWKr0SuWyI5y9jr0NPzMn1EzkF20=;
	h=To:Subject:From:Date:From;
	b=fP8bDTIJiAtT/7KMEmipgfmxM6iveqjnf1aSlzUrqLQ8T7GsBLCyBzEijEruD7iwT
	 4Uu2gt4JERdksPUwpEITf/hMF7p9LSuSSTQws4qzgjUDMH6PEDfDuR2uAptKRkGw3S
	 kf3hCQiAnVe3Rh7MOn2x+LrFZ7FZZVZ2WdCg8D0glXBnRJ3uAv8QJK0XQzfu65KuFt
	 oUdw2mLcsTtLPgUgfIL+u5KN4zcnLeNvw//pK/Zg/XyLxdEEza//4ogzQExQZMp1Dg
	 RDvTwmQiKyM/Ge7oJKzT/YbLTrOOWnASMh/Xx6knkh2uTn4/jZu1qmCMzf8J3koekF
	 boKtrxlFvz9ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D070C4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170129869637.20852.4163742373600096848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eccb353f03502090387dab0bbf71e2926af0c0522694b2a27c096e7e1d03818
Date: Wed, 29 Nov 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701298696
