Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EC82D063E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769889234; cv=none; b=m6bIf5c7Yqkk9tIlhb2kShZbmJpAk2U2N99/2BasZdZdTzZzop85RwSUlb3F82W6lUhxLptv1gIr0Zo2o8D1yRuntl1VfGsEpn9DjpHQ8F944lnfXkDAkrutRKqGuk9gPc2PO+uoNUMte1ePwRgXndGtOuoe4AxfW+3pocHpjFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769889234; c=relaxed/simple;
	bh=bVu1iAFaU/BzCUy/Wilw0tJUr1xmzbrD4ZXLY9DqP1w=;
	h=To:Subject:From:Message-Id:Date; b=LVZs9KQkqtNuAIoh9VNCKfiMRnDjMrVL9Ddp/U71YEaRyxBfjQsr5fK5m+TxeVAfRaH69bGsEr2ZHHbiHSXVoqbqHozhFDoxB7cKoSIlizee1mu81SIcBl5T7ysMGEPnNTjXJWCy8mTKKntiDePwoF238VtTmQP3upW4GHwz5og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgxlFreG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgxlFreG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BBBC116D0
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769889233;
	bh=bVu1iAFaU/BzCUy/Wilw0tJUr1xmzbrD4ZXLY9DqP1w=;
	h=To:Subject:From:Date:From;
	b=kgxlFreGOGT0HleHfbcRmCMKY/vpCxzVu2lKZdLMqEDvmB4suk4YkyVBDSO0D4Ys0
	 zkOW2zZQUomHZzPQQqkYLQtQNs51o2RWWcBkr6S8kc4BohdyldLDn9KWTPZEEspYrY
	 AGYzTZE+f5n+xNtlH7WYQeNxCuZnk6DH7VICWJU/zkRez0VNbt4Vi8PcqScLGDQoxa
	 6QApclQuKALthgq3P2H9+jQVbxKZlh0rYGkiO/j6CvheL/RkzMTjSelgIDNaRYArE6
	 5LY/vEzGcAPQw137UwXqXKGCFvNwksp9daj1hvVbzzL2H2MUr96U+LX2nPfSlQ0/G+
	 /PrLGO6NOTG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941BED73EBB
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988923357.21199.4157676862335558412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68665838db078582a1e9b318072f14178470cdc7ac2011dada17c4f98f869c18
Date: Sat, 31 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769889233
