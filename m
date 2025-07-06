Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9F18F5E
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751833794; cv=none; b=IMNnR1KK6b539zqyMZJ5CRLJGyvOW5xWH2WEEnc3Lke3dJ8uSZWuH3NiAXpTrHsvjREa/vdHiq8hfgQF0j670GMbm28D8ifs9OpGI76bnhI4f6495oKVB6PE63Lo9IC7EY5Ah4VXmwTDF4LvSBWuOWQztD+S2atmHfHlkQiquaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751833794; c=relaxed/simple;
	bh=HzTcVvUUSg+7q5vVcfjESOiU1pDnWgQzUWqrN2+/2Mk=;
	h=To:Subject:From:Message-Id:Date; b=t06kuqgw5W1RNaguYMr0UHdJX6cUs66WCYuhgzFU8lH8cNZS1e0eFegfJR+RowaTdGmj2ZG1hB28/ac6xUrfsSBsQ3R4ZEkK8ZI5j0HCd7KIbm0evBzXLu6UItGusB1/kKKUOCrcV0se4ptx7xqxLIhhQqrDcCFsGkk0aCA/cHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6Lmm5tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6Lmm5tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6037C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751833793;
	bh=HzTcVvUUSg+7q5vVcfjESOiU1pDnWgQzUWqrN2+/2Mk=;
	h=To:Subject:From:Date:From;
	b=r6Lmm5tfP6aV02gxDod1/7c1TliKLzojTItliGCK+/s1ZSFaXgVCKx+pg9HTa/dip
	 wm5yNmntBoQCudlo77FHUf5bdQC660fqYG1f/9HaOLHnj9R/i+lQlC1ht/1hBlyowj
	 0a3jRNYw6O38zOOAX2XHcLkFSv+wbwqU6DpS353+GRReRIq6xA15mE3bIMTiF4B7Ai
	 w9RdBOuRK3PWbdELlHCR8JFqfzC7m1m9PtR44VtKxxUm4xrRB/TlfBg+Zv2U2/09qn
	 CCeQuoQ7xRVNbXATEWBoRCO9luV7k1eWyKbiLBsyVsAF/7oaNMl8mcDQ3xgymfICnK
	 ver8dNm+BxPlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE27C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183379357.15315.17266944893813514430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6e125df95232248481bf76c05fde52f25ec4a0971e6ac0ccd83405e9342065
Date: Sun, 06 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751833793
