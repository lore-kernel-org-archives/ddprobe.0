Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5020B346A19
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784405314; cv=none; b=Nza/twI2CWSczJ+cBgaumrGrb0OpghFG+zJyN1n3xydhGuQRiwle/6feGbKEPjZ1CHFXIFSDE12svBRg8C8PK8vdblc1J9pwEHehNWr9jCNA4M82kl1dqIyLgM/kxwPSN9GVlWv5fouFNDfH3T0xJwlFkP+v9OLLA/T9Q1guDKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784405314; c=relaxed/simple;
	bh=4o9aJrCWWnxG2ZylFuxUExkBhjjDQ+szIUjcBUHE2O8=;
	h=To:Subject:From:Message-Id:Date; b=WDEZ66L1f2ZUz7aQAhOdNE8PEzK84IWuCZdl+CFcJpyDRQY5oAO3mW9HCGAhbIIucMRsmT71fqLynZaL6mbeh6u/aGepDiTimkVfyavW26351Kr3qMuMStpCT/sT9bvP7p3UMl4EB/aFZ9OiN7U7frmQDgWDZC9Qc8ZmwtCbfGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZsgAcE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZsgAcE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3998C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784405313;
	bh=4o9aJrCWWnxG2ZylFuxUExkBhjjDQ+szIUjcBUHE2O8=;
	h=To:Subject:From:Date:From;
	b=mZsgAcE3GzO3vS2Zx5Y9FNFuqpBel2t6GN4aHwMwiLhPnVkdtzzl2SGabZ7iXbBg+
	 bgYWHpvOP2iBdr5egkcDNADqEQU4dgA2ZkiHfAx8VIpfzN2gwqmFp0copaopsgnCFM
	 vA5vfnRbwr4E2x98Xazh8ftoEfl5n1hHr/Tw4Q/LTXUxp1blhmHtAQUoT7K7fyqpy4
	 wKUuFa2qjkBXHUFOoPKRUqAKmOtFo8yc9JvR1vUbtV7H0Ya2nE3oZ38Wz3qbp168AD
	 xv4Udi3VjqieQ2gN5UmyFivmqpQ2IpaJrcmwsltZxCw3YiktEA0Gc6mdxfat5tubhg
	 ECH0uXytLG73w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF53EC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440531368.31239.11687974986752354722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2126900160b8b9734bd2a58993491dad5b035884c3368649257ce90d6e0e17c
Date: Sat, 18 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784405313
