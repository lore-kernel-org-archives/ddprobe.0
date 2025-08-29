Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DCF263F52
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756490994; cv=none; b=JtGRkv3S+piaQT4mxu7VJLSgyR/WrFYawH14Kx0llZ6tpMgVakpIYtb8HFrMqkPGcK2SZ2Lh57R8g9ZSEz3RlJnM9tsXgMNl+hFGPbvHxreg6qWcwF6eVtzZm81p2tNVzbeA1iKsWgqRhVKLbhALY1Hd19brSNngSRZc7/kjOfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756490994; c=relaxed/simple;
	bh=x289R+6hDAe9KeapYyw+JWd5Ui0Gj2Z+41ch/rRlhFk=;
	h=To:Subject:From:Message-Id:Date; b=g/XeH43prkxR/TTXQtoePPaEVmGDGy2rl7TT3zcV4WVDSJqAA6DHBTc9mgIKjd4zcKXgo1XooayT7hWeOooAtb2g2jXawPRC5kOoJbBj15aPpb9jyEA9KLusSsHNfeaCfoZ96zOoV9sw18tjq11Gd+G2KNp4pxphZDoA4EvIqDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4yBXQ4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4yBXQ4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0002C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756490993;
	bh=x289R+6hDAe9KeapYyw+JWd5Ui0Gj2Z+41ch/rRlhFk=;
	h=To:Subject:From:Date:From;
	b=V4yBXQ4nw3N/a2FnmRNVGdbJy+uRCiHFaeobqudqaoE8eCFzqY59wYz1GljO4PWCn
	 kRh+lIu23Kqngj05Ohq1vL3xMWg0arWAKQcYBChkIji/XcA4KTIf1US+e1SWthygZ8
	 92buplr854Fh1nEQODgVX2u93FZaSrqt7Jl3SBEe2GmHY9SLc9jgcxBGb0zeUp+MnT
	 J8bqo0F5PmJmKAR6KlD85Na2CP2c1e5ihn6ZxbPzRHWVb30n4UVae9MrN/CmkV9rth
	 4c87WpesInX/7mZuwAYPRREa7nLgVNgEQr6SRHaUJ9P0xe78Inpb1Viao1UrrkFVTM
	 uDUiIwQzc9OoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169CCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649099358.8979.17482354295755045331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e015d4a5f3f702e0cb511bee2414ffb6268c59e59d039ef46bdc15b9e14c88cb
Date: Fri, 29 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756490993
