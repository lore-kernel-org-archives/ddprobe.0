Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF872853E9
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759825193; cv=none; b=dfhcZ1k/FVGrlEa88So4/RCFg/GbiS/kDe39kLcRS+X3afDKs7ubsmMVflidAeMNe1oVa7DNY0Uo+y/34TiWAzs1nKPMtFQ11wvGakxlZDiQqrrBXCo7uJY0CcySfvezPkvDn049Oi9szrBwfUo1eoUyzcPxfIFn/FHy+QXlHUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759825193; c=relaxed/simple;
	bh=UkBShrmT9Y8FUU+bdRyBj+V6WgPNMrxO8oO+lufgL1o=;
	h=To:Subject:From:Message-Id:Date; b=q26rABx+TeS8k+uVqkX7Q+LN1buceH+/3ux/I5eaBFIQjr6P2t+XuRriEihbQLL40WH+bfuZo+DSGRQ/N4ANF+yYmtLJmMuFLF1oB2xZXpWKg9dYkFWG4HCXhv//EWkoOxoz3owN0/agYyQNfNf0EyiX+87bx5OHcQEgWjv8hDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+ABZuyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+ABZuyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759825193;
	bh=UkBShrmT9Y8FUU+bdRyBj+V6WgPNMrxO8oO+lufgL1o=;
	h=To:Subject:From:Date:From;
	b=Y+ABZuyxtgGc4TE4hRUgP1ffVKkTugmitBcVcKvWwkIEB1XGbii6HGf6Qn8t54RvR
	 xzjtMRQNlzfr6KP/dcAYQGmtGPHBCcGjzse3lCWQmwGBg5xq4cKk0Bf2qKkPvnnqzS
	 vak2NDs2dcMxxgx7Q+6Ap4wLWU59ezZ5+pFrArWRplbXWI90tdmnjEK2d9I8vNE3oG
	 GUnHEid5iFV/18zZy04yVP2Ti2kUUNDneTWA/DIw2y3H8pXLEnbZ7x+LPeAfW27MuI
	 mOsOeDluj3lKtYb2i1skoZhndKLLLOG+hti8LNiSt+hlDDRcQoKjy2/Nhotu833m9c
	 R1frqq/Ith4/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C0CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982519358.23752.17853668984536810323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64dbff375f7e33061325ee2acd8a326aecffe21609213f30742056165c195f3
Date: Tue, 07 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759825193
