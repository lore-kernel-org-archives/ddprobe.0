Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426311CDA3F
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740239934; cv=none; b=d35TaobchaErWN2YC9l5oLKiJ/8uqwccv1BvH5uRghCJgvSqtCqVEG8K1a5lmT3cX6X8PWqCQ+Qcy3PfNMF8tcfmv5FvG/cOiYfexBqDmilWzd46/ln6znJafLGLa95Q32wNk54z+yYXmS4G9TkVKXZgH1rPqqvWq2O642+QeVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740239934; c=relaxed/simple;
	bh=PMDBs7tZjVZx600VrSigYMgwfuNbMXlxqTnS4QQSEsw=;
	h=To:Subject:From:Message-Id:Date; b=EgdrjvK5alxWqX8mnzopHdaeYhXJ8GWEOrut/Xa34mGnjsg84M9cmZ2waXVhqpwS7rYrWjna7mqWC1UcIbFfm1gDhklAr72VPVUZxNinKIBvXqYeifGwSFrK/tUAH7+nNouIjKUUlgQ/KojTOlT21uOy+8o++rU2gQ2gSkiqIFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWpSzQFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWpSzQFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A623AC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740239933;
	bh=PMDBs7tZjVZx600VrSigYMgwfuNbMXlxqTnS4QQSEsw=;
	h=To:Subject:From:Date:From;
	b=TWpSzQFXQYFKj16n6v5578b1X0jGNzBV7o2+Kw6tPlGJAVKV1ED6gqlpwqU/E+3Kw
	 SY+1y/S2JmFEEXxi5v/9k7O1OBJoGRSRctbZQ1pxCSGx0HMOTyBgOwuaYZf5fWB2rw
	 WdsPRXNVUtwIm72Fjy3z1PeLiWHhCLB2HoLRUdaqsetUd9NvTp3V6AFV1vFWZJ8/rT
	 Gmnec85yALHAIEU/GU6733OEHhpa4IFeqakhhfVNtq2jINei0LxllChoUUIHJJKntw
	 oXmCEbfNlBVfNFUC6EJ2//mZbJwhLXona9zaEUIf3JvPsyHWV+jYL7S7wjCtqR6xXy
	 k1sOmzvrdOX7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A2CC021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174023993358.19089.16657958851004227275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b5580d4ddb848ec74e8ac28bf147047479fd201c133260318e1d3c5ee80844
Date: Sat, 22 Feb 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740239933
