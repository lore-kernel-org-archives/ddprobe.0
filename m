Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4031446D2DA
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784655514; cv=none; b=nuYSO4r7EQjzfSovNmWxABNJRVvMIx0sWFThvm1uq4H9aqiNkEaRmw829Hq2/pJNBdIQ/w+dQMGf7lWYVZj5gAZDjbTvQW5wz8PIuofFz4S2pgoV5lD9wVCeIdfbIf6WS+s7z5QOHKoR16JxbzDxuuXMcDxzUYTib+WhitN9FzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784655514; c=relaxed/simple;
	bh=TfA/CeyBZTu9lgQwPFFoCX7LNAzKS6tLQj4V93b87aQ=;
	h=To:Subject:From:Message-Id:Date; b=UyChpe7s/Ul6z09vIYTJT8C9giaaUCZ4DE/aOPsQsasqT2SPZjfDXR9oh+aH0DS22Cn9AIg/VFJnueCr3AVZXj4J2Hu/tbi6VKnOmnyeNT4h5rFAaZHSaLGkks4I2jp8MwFslPZ2KvJFfqzX1TmAaMjSej4CJ8xoecDai1fWYUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdjHrF2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdjHrF2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD326C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784655513;
	bh=TfA/CeyBZTu9lgQwPFFoCX7LNAzKS6tLQj4V93b87aQ=;
	h=To:Subject:From:Date:From;
	b=UdjHrF2SN0E/dP4FdhfpDEAa3t2pH5RtrHSNi/fX31+09S9g0FeOvylbBnL5SAD19
	 SifDQR0LMn0+ZelLnFiCCTBjrQL4oA0mdyn3rqWA2/uU6h8LMkqW63VtMWgFJxUh0x
	 ZUiSclIfBajiuoJ0/My99iNkeC6bTppNYB4QI3HMr18LwVQDB3b7vWFnyVZLqQ2EgM
	 DGg3jT8nyAqa/lgcY69kvbei0D4SBXfNCKHZXAwauJ7tAHYX0R8JOiQBWpXDL5F9wO
	 +tdBeK2NJpmWpstQDctq3c/pts5XegESqMCq/aAIVw4LYj2EtEHzzwqxzeC5lHVO3+
	 nq+4HRP5DLRFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A953EC4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465551368.862.9711823869743805273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df766bdb16c24122c0c743d848caeb86350a7236b605cf6018f9cf0da9a67f0
Date: Tue, 21 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784655513
