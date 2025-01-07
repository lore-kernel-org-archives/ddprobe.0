Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282881DEFC8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736230554; cv=none; b=Y74rHg32EMDbl2q7E6VyHFVVR6Js1OGd4e04EaWvphlsEcENnMsU1TQPUI5o3dE1TlZXgbfINP3mA3HPSzqC8rK8KHrYkbS/oEO2BEcgEKX1A0f/c4eZgkOWXn7tSgVwZRK2JpYjniLe8SKvEDLBHPo+wypIYrM8xsSxK+PxR68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736230554; c=relaxed/simple;
	bh=nchbB4fWrZdgorL00FRZOTskjgdAGSKobjABKKCdJO4=;
	h=To:Subject:From:Message-Id:Date; b=cXXIUu8fRwJvitsF/pAyiKJCQDyPHN6LMeu+TAPSq0Z4YG7sXeaIeqw4HV3mG4DikwezZ6us3IYTfTxs5bEofCDQyAqdKEMeiIYzEwhr5FB+ZN99wXI235v4EXsH/9vX7D5tVJUfxDTRrhfpcDrgVr9QaY1YiaV7G+KWg5dUGfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8HyGc/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8HyGc/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DEAC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736230553;
	bh=nchbB4fWrZdgorL00FRZOTskjgdAGSKobjABKKCdJO4=;
	h=To:Subject:From:Date:From;
	b=h8HyGc/06pUl+2OOjDadTRSKBYZsWP/9huZNlB62gKR++5LzHQLn8KzFFIh3J2pTf
	 HR3pRT2Y0RSK0luwgZPdQnL0stvQF/MFbnVJhPdSmF8bDO8qznRH/1Rpaii7Fd99ve
	 8QrozvyNRQb5ugevMAKzkiLFZZ6YZ3QNRj9set7KKoNlDMJxpt6EW2kHVE2b90AmBw
	 FXKmC0vwhSSVz3Zmmu2gpbHRC2x8gyOMIboZYQKdd6jGEwC0J0CyNuobAV9nEgrOYS
	 n4qXpAJMR7skM6O2IRVLRJkTCyj6IWoCdwTTIlU6UcUvcTJOeKOs0acU2qsR6wLCrE
	 +jF9jLyeFa5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BC5E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623055364.25509.12095257259652805787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97cfac8090ffa2eefec4f66ea8a0c44eee3cde45ac3accaf7e8b4253abe6510
Date: Tue, 07 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736230553
