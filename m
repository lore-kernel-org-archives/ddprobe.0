Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2873FF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 05:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7740C433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 05:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692076388;
	bh=QAvatLPRt7XOuBdaWcuuIrwxM++50/YfGoQ8UtOZRD8=;
	h=To:Subject:From:Date:From;
	b=cUhOm+KOjplIC/FJ3CbV5FL7ViV2nVh7wmMX6NfOcqQ97Ww/pR8AaZBu0d4rAjAQ6
	 5MvLdy1RCFxsERXThYSZMkXSHSWwHJWqUiHyG3eT1JyGoWZnMkILad6So/kLBU8i5h
	 +DC4kFTWrG+3ZR3oJoSzN2NrGXp5jgc2MVfHJXgd3ho232JvmfQxgZ5TYErisNF8TP
	 boy/5bkPMs7AZQww42CHY35+p9Bw9dVnzlTS7c2nVwHpAovQE6ScOPN+DNYyUx/VkR
	 U+GxCdumGuZqUI1U8Wu3Lo9/RxxBNwjkxw0M17vcR7QdnzyD7uzIKK3c9MamreAsax
	 WbYzyNdilF1Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74EFC001B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 05:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169207638867.31574.8164736474716806965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8ec5251fa79560b42bf892b4445ee5ef37a7475bcb0c688f03dea5e4cb4c51
Date: Tue, 15 Aug 2023 05:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692076388
