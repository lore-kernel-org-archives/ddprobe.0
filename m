Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B6D2D0C9E
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754864394; cv=none; b=ZhkhZQ385TJKUiXiK4lQSnKR0MTkxqhzA7GyO5nqEF1dvQnHjDDTqGeOEv93V54emBK8QU0kEC8LDABYzMM4P8dyMXa50boyOykBL3cK6V2IBPKO2ePdEMyFmfeGbXNoiwL4ICvoB3JpmXio1qD5r9HEYoc+vP3opj0bMLSwnMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754864394; c=relaxed/simple;
	bh=h/pUG2x2+qixrUgBUr5oeOA/uZL1S/WY4HpPNZNrxpo=;
	h=To:Subject:From:Message-Id:Date; b=hRXaJM3tXCmit+m1Ds7KxeTfdQgjXc/2tUGmV6qwrLmM4o6HM65EINr1A2cYxl7yrYT0tdlx9j1Yfuf6O+RmfPtxoYxUV0d/xIM2EC89caBjDvb2Nm262DaoS/bw/IUFoRdOlkMkPY49mqQBXyPgi+RLRmi3fFIuqXJjQVVboAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpYfzjpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpYfzjpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4056C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754864393;
	bh=h/pUG2x2+qixrUgBUr5oeOA/uZL1S/WY4HpPNZNrxpo=;
	h=To:Subject:From:Date:From;
	b=FpYfzjpQQpzyxPMO6+7IRhg/ljA8ee+U5Iv5Sm6cloYPKr7l3TgoIHGt9OyuTJvsh
	 nE6p/od+RaH2XKbjr7LEafPa6wMBZHZ2ysc6xDDWl0DaXvsJIQVf/qb5FC6sD7j/l6
	 PyjSiZ2DwGMa2FSOS4ZXYWfE/j/cy2kEEJHMwY3pREbZQGtxZARhsXGXtdUvlA/AEq
	 foLlAal+nOabdHv6h5zexdy/RsaA28e943dHhlGpEj10QK5RyLqR2/xqAj7eKwCdZr
	 wrMLkgDkfg7XMFFvpMFNG8kP8QFnJdHvkCq+rWDCSida+386URDT0eea6dAMzNS6tZ
	 UJ4OpJmCTyfMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91593C87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486439357.19271.8777535543601260797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884ea01580de7a0c5e06b28896a2f5357e2c86a5cd512193c7197e3e13fb42d2
Date: Sun, 10 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754864393
