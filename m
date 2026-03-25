Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AED3DC4A5
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774462493; cv=none; b=lBxKY5X+ZGKFPxbWSFr6ITlFUeufqp2hyyY6KSLhEZQCKBw4yUyidz0xbqrjQHieNuCy6NrNSwfhcGoy363uuLMU4tgJnDn9OuSnLOtUmfwN8QlPJNcE/J9cKK5UTmZYQZ0wvJpgYGvNx/bs5bJEcqsbPzbsjTCowUGg1bUB8E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774462493; c=relaxed/simple;
	bh=BkyzKZz6e8LJUGDNMD2aW0u0hsMG9GbvQjpRVGugkzs=;
	h=To:Subject:From:Message-Id:Date; b=HH/m4Tpuzr3AHabkezxD0x96akSaainPaUdW5y8W19nTw8Pl1TK2gCUeLR2wld9/d/4QlvreE8Ck28e1fVkTcaZeOTjE+Ikicf8NNsRRm/xMDLsweHL2L4WhW5xRWOxR1WLkqMb1o1pYzithpBiuCtixfGt5RaVzrpelqK2VV/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8QAAkSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8QAAkSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91A6C19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774462493;
	bh=BkyzKZz6e8LJUGDNMD2aW0u0hsMG9GbvQjpRVGugkzs=;
	h=To:Subject:From:Date:From;
	b=J8QAAkSSgNl4QcIqRrCLYu0h5NPsDb9VCndxG4fnyOuyTSnb7SEqGT+mxFlpbkjBv
	 /FdUeRGcNDjkhO2yJuLkLKVjX9qsGvtcfQjdY5qDK8u/mUmudqq6yJ+ioBduFDsViT
	 pdy/b3Fj8hGsTQwh4dtT3+joC6M+KeelMXkiUmoNcin2xLjqNFnRW+eGR4WvnuG+2C
	 1MEm7Qwf8VN3ws1pqqwitnrv5CMnRAQ/t9HY7GQ6vlbIVE3kXXb2Zq8NvBubQSzImH
	 rnSwVCdSDV6zC+0uC/QF7H0ZZmoA9NLicWS5bO8fhggRF3zRAiSPaIpdG6KimIlU8Q
	 R3I5eDD4NF2Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D2109C040
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446249360.2119.16440043965084135439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3aff9a28a8ff16142c99fe879b19ad8ae9e027ed6999fb376008ada15af71b1
Date: Wed, 25 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774462493
