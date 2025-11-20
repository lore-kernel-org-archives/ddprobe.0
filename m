Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262021FF61E
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763607714; cv=none; b=VVFDud8S+vST5Dt9x6wnsRucpuAd4Ddt4knyzjrq5iBrMBBXEZ8tEpwaKHbN70n6QYbQpWMmiJ8zWfqcTQnA9wHV+5UuNLwmXsWCZ/E2S7LkOub5Ta1u3GNZi+l5272rxwJxSYzV195v/Jg/cGLgadlwsPTtivLlhyngHOQdsg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763607714; c=relaxed/simple;
	bh=LAbq2qc2Ve6rt6tBSPRjdvDwwZXdT8PN0pCvBMuZ3RU=;
	h=To:Subject:From:Message-Id:Date; b=F9DmHIZoiJQ4uAS9+PXw9IKmY37agsu5EA/mUq4VQgVQdcYndFguwI1haPb9BPKNqP8UM9mFx1Kd4OOmOz+Q/seek4uInH4ARdYQGkxxXnb2lmuIx3BJLjfX9oOw1yq1Vy53qUr2Zun9V58siI4szTN3fr5cLvkbr/vj+KiKzfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXpTSz5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXpTSz5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B17C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763607713;
	bh=LAbq2qc2Ve6rt6tBSPRjdvDwwZXdT8PN0pCvBMuZ3RU=;
	h=To:Subject:From:Date:From;
	b=FXpTSz5mpuUupfbWcbt/eUvZxkdSweNj9yVx7XaDIXwjhmB9BhwAbIMoCdphwvQME
	 2T0MRiEqpRVWxasLPruxTRAyOB9UtaDsvbBfrPNZMgPP/B9JseVJOO1UeG0A7LuFAV
	 BW15zejxiusiaRYy7WSX438cm/KnvOpq9k1lFsCd+brUw6rtfFD/oDvE7rLwF72E9l
	 g5sFMhBpOYoB9qQmg86utzfiLdOoqELp+N6LHo3HWpuAqbIAjGeQJYUGfD1wTpIkxa
	 isPCUZDel3NDI7UcSSapRM7tU7FJiaPWqkVuI7OuAM4ZC0WUgJ2IUxF48ey1b6qzQR
	 eOF0rHkm3/8+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950D8CF64A6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360771360.11110.15417237237082212281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9820bf68aca585ee030f01ecc7e0cbe469f7104ef663713902dce645087d1bd
Date: Thu, 20 Nov 2025 03:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763607713
