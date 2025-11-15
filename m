Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AB91946DF
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763244054; cv=none; b=RmE3BJR7cUqIdc4Icvp1NZc0E87WbuBP408bZ5h+MlFRtXWSGJ8mHad3zmGEUXl01aLNs9H6hRsJlDblRpMaTGIHtZrj+SCLBPt9+aQuycAIGjU3wZlVaMHMBDLblp+98EGM56OGHaNU0BsDeaFJWAZ+Qasyt6I6sNIAA3JlqcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763244054; c=relaxed/simple;
	bh=zevO8/R9hrxrcBgVasom5lR6k+iUFW2aLbUxOs8WKgk=;
	h=To:Subject:From:Message-Id:Date; b=iEytVDHcCssXzjbCbPF0iWhg/zo8CPOWImR6kwQ/4rK2KmImWs4ZJCoKN4mf8OjJMzGRoM13DOKJxh1Lq+/lFJAGpg5qnCEyDFxKVhA+Ed24YNHpk8vlmZTxAUKvluUM2RA3/AyXCs54mJ1WLaATGIG04OhCVmoMEddWGAMuSzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z21lJxCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z21lJxCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E15C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763244053;
	bh=zevO8/R9hrxrcBgVasom5lR6k+iUFW2aLbUxOs8WKgk=;
	h=To:Subject:From:Date:From;
	b=Z21lJxCz4t4xN7vUm3qzwHcS1MuM+CnxcZIevVccB5DPf2vnDv4uChaZNta9ethIM
	 0U1k6ixed/ST05qAYxp7ERXU9a5oL+eNqfJRleJpF5VZQVZILqzZGSfW3/ncLq1zJS
	 xqarPGfF54khG/ufpi4Q/Duxu6Ab1qezM2Ruw8v2JfNu1+5Otm2i3KgqSoB0zybCVH
	 5uIWY1fGjutgy6WPBSAgGN0NbmBj71j3cqvI8BUJFlUUa0jDDoX6M/tsJQl2326T+p
	 X+T1N2KnbKaFZx41XPHW98vMXhrLTx6wkRBbrxIbiPCncA6cN0x2nYWjnzavUmERjN
	 YCotpILWFjU2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96854CEBF86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324405357.4080.6029163314211954320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf16c576433027dfd172782bc44b44d47990056a9996e10f01c885cf1a2fe2e
Date: Sat, 15 Nov 2025 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763244053
