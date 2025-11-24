Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35402239E9A
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763952714; cv=none; b=sCvo2t5biQdvmFXOO9ucsr8dC/bwEvxxHy2MFw4pBrBKBN4NfCIsNGI69vPgZrwSIcltT5sgKL7kjalNXsLPMxnxucMm0Rb9RLyGyDu3kMLWliwFGAl3SSHW5fkWyTovo1nstmIqyduVWLaektxXmEoi0y8mQxCWh+ItMamW+ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763952714; c=relaxed/simple;
	bh=xcRVnocUSD420mxF2aScvn/cxBjsEfL303p05uFUlxI=;
	h=To:Subject:From:Message-Id:Date; b=s1e/IzI/NkrF5acWUnjlHXw30164hg+3yRCazRmsT0OI8pLBmf7qTMkLVy1KpP7G6wUijtpXMBLE36NqM0xsPAIpSoVjqkweyVXDP0uJgafvVSMlZD/R0jfcZxT6bLDqLKY59z7a9BROipigLYbueurl1MfFzeQNubPssOm/Lgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEWGF/v3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEWGF/v3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD549C113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763952713;
	bh=xcRVnocUSD420mxF2aScvn/cxBjsEfL303p05uFUlxI=;
	h=To:Subject:From:Date:From;
	b=OEWGF/v333CjodbNl2cOD0iNlVBjWCQJGm6DzMIyUAIuzIWZ2YMUsdgEuebVjsYtu
	 j6dSkUkRCYj0mVu91WEZeJuzP0Y8HlbrRmf8FDw0pvuvzItFTBxVLKwRI6PB6tqUFk
	 /7N1gCq/wQ5hiLtxjFj2E2gJvN5crNhzo9b/Nm5AquaBa1gaYio/Bag1Fqhqp510SK
	 gw7MLqX/YrV45rXJKcnAuUU6vBvs8ffoJ5MV/A+aG8H4G1ma+u98kfr+WPqFDP0oFl
	 pRKVU4T8nAU7CnPj/LaT/J+H3wz0/PXzOUjZRoxRAZ8uBXH7W4IWvi3cyExwsMzz3W
	 6SJ+uD1IalHNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9764FCFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395271359.28808.7415111563917936946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b98703599b0e9715011bf200be2a19c48f330331437775349bacca33deaba43
Date: Mon, 24 Nov 2025 02:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763952713
