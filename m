Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424591E00A0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760797794; cv=none; b=C7bAGPtwIWJ7T7m8tqtg9Vh4CdCSLvAeIxaWgDC5As7eIUPx+9mM3Jn1g0nzK2I8tepIP/exUHXzYZC9uFfRglLJhlYmIsoHxnLt/1pnaMWZnfGovpEfj9hhcfQuBcuCHU4a+CvLRFKMFV73yD2k05otKiVy3QJuqzyenAhzwS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760797794; c=relaxed/simple;
	bh=71U8fYKIxRaLJChbdlGlBXVRYDnRqmMJljy1K9FkTh8=;
	h=To:Subject:From:Message-Id:Date; b=JwALcplucplqoYEobU+mx+kmEL0dcwtDUH61/vS+UMFoOUJR7iLt0lS3CsJXQ2Vjt/KiRR2bfrZgB8dJF8xjNAytHsbXzt/qOZgKc+SYAg2Upz5+vNSTeF9LJ7uq1aUsGFoIufozto851pRcj2tWtVcbiYx5I2omiXwX5NGZsag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIWE00Xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIWE00Xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9A7C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760797793;
	bh=71U8fYKIxRaLJChbdlGlBXVRYDnRqmMJljy1K9FkTh8=;
	h=To:Subject:From:Date:From;
	b=CIWE00XjzYVowgVDOHlHIbKvun6XJYEI1nt6ClX380h8DOlR9je+4VjCMFhXTY4Lu
	 QVx1CNGJrIb3h7BPYBx1C4r2tRFNCLASvcGYEMBc6YpClmIm0eUq75wNuxDDiFLaXL
	 5gqlwWlK0F/zacCxALCuDA1b6pI9WtrHsqc9Q/QNrwAg6vGprKBwCDceVdFxwd/LiS
	 uzSpnk3Z9XK7KQsBYH/exePJgfQVxjvl7L091kccoXXBSuAeMFEAN61IgvfedgIeJm
	 bmWU9foJ+y9+xVWppmD2SDBVBEfR+ecB5P3W14+9+lAcr/fQzOyTwOjLVlGx7PnmqZ
	 h6s/xn5zERUUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E8ECCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079779359.26181.10124646183281228444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2262efecda683ec4b9cfc49a6722097b11c54a9199428a59adebaa453ff497
Date: Sat, 18 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760797793
