Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC0923D280
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756228794; cv=none; b=lIUtVE+t9x9Z0SoTYG+O2EuQJQ+yO0AeZZPdcSU9/A9uC4ASMuPsXIJHBnu70Kbxn9JGbqmt2c9OMSoje2cgS2h9GtcioK7u1vYimXxL/18qKzLgJFUmEjuEnuCC7vaoAt1r8wWJrg8j2R7DMaK8CgxWDaVdIWan1HvTy/C1VEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756228794; c=relaxed/simple;
	bh=Yq8EN/CRFhxpHX1jGbyr6M5RIUeC+GB0fPtiqggaaMg=;
	h=To:Subject:From:Message-Id:Date; b=Rf9WjcFIAI7k/T8d2mAUhimEfadY3fDsywzhyGzy8Zau8yY9PP4XAXPFVXMkhHAGvL9L5RNpbqyGBjd4lm1fuhzkvM+tVTqgHFMetoHWHoHjw+iw43rLsUG7rN7nWf0w3jtAzPuiZA7FexFLIz2uGs5ocFmraOcZgMUGEW6JaWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYwxX0+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYwxX0+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48E6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756228793;
	bh=Yq8EN/CRFhxpHX1jGbyr6M5RIUeC+GB0fPtiqggaaMg=;
	h=To:Subject:From:Date:From;
	b=uYwxX0+ZkvV9uX8RoEDvUac8IXlU7RoW4u46Esec+nOcdA0SP+8QbE3uhe2igAD0b
	 lLiw6RhsGk8Xgt7PARB/3rfuecU9hyz5iUGt1zGQnD/URhRyyJiE5RXYmsOaqHmwFN
	 JXN4gCDhEXkixl0enw0KOo5LoRqyUxjdumVLuNQ9deFx7Y1KQlCFDVp+p4utkZ1LUQ
	 tsbvgxFzEtxdhG5KoEgQJEKZyF+TOjpovewm7gntzRkyavk7LhUUw9/2Nw4IG3D3CN
	 j75ijlkRjd28lAOAthoniDZ+8CoEkuLdnEsPTSjnXbGbC6NmlxkZ9wWIdLgZI1qFlH
	 PsLCAGkJBl75g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909CDCA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622879358.14894.12431503398354771860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add6825646673f2811ac06a95934869bff9960a7de3e472d17064f12190a01e4
Date: Tue, 26 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756228793
