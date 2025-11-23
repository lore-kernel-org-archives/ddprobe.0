Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B4185C4A
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763899914; cv=none; b=NwZR0NPgsep31vx5wCBizQGbt6dLaphl8p7aysHt3HlgKdzXDs/PEZK2WNEn1VUnqjc93b+1hBsPOgZ1EkZbBtgsAY8L/3MFEoecdPgjORaA9lFOtSyBHH+Fv8v20xYkgfGjNBd8Y6LXlrIi6TWsGmeYG0kgS1chxRK8P2oV9XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763899914; c=relaxed/simple;
	bh=0QD2xJ+qP61cT8k0C01KjcB6tbATZsBgoYQIj7NXaKw=;
	h=To:Subject:From:Message-Id:Date; b=avG1lq8g1mByefCtCYfRL2xeEfBCHujgqTFchsl/r4R116mNoh0loKoiI/l8DQjK3GxdcYTE13E4uaFhy1xqQuzP6QoQfMkCLCShvxLMoc0jZW1XU5kwFQ+X/5HKMmKEr00icuq0+LKgONAuOhmo9qovX1FvWDIxZfgCjDmfm04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8Sw/Oip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8Sw/Oip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CB7C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763899913;
	bh=0QD2xJ+qP61cT8k0C01KjcB6tbATZsBgoYQIj7NXaKw=;
	h=To:Subject:From:Date:From;
	b=b8Sw/OipNzBtyA8vDlEjMsCegS+q7jiO+FUUFMqd5bQPa3lhKcSv8W6GaJqr2DV1E
	 9O1Xp9ufeI1AAQtwy4jzUu6N/LIMa/lfbsqdgS1bO+chXS+ZTfjB6xiXGyvbDrugvC
	 3mjo7FoqQispQ/fKCZR9QANddoU+7y6+j+4UUm63/ylP0NVv67UbPE/GBclhk0Kq+K
	 OmWQZ46OzshfJpsTJaPH0wTSe6NeAKm8aCf/GFrDnVvW+/gSPF4rt1MXRxoANtsUs1
	 oeGJGJoGoRKx/Ejrzq4m3+rEidK4b3quyzQKljlxJkuP/WsXYQMOtVFgc/i6FwJgzv
	 rbTQelpLAX9Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9330FCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389991359.17072.15953351733717267906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec653cd834ceaf04437e3dab27018c222929a43109137d02c015f99b03e6682
Date: Sun, 23 Nov 2025 12:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763899913
