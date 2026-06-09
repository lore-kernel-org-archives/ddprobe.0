Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191AF36495B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781034934; cv=none; b=XKBLPR7sBpeT4JTLTpCS4Mz8ItO4AGs0yc8uyJwq9fqIeezvME6CtERCV3SqM9vQ/D9OJ/T874F0Mg/AZLIp2I1s0y/VLVs8foUDVEIKB9MbpVC7t/eHe9wv+098digWsW/ncFc2GmVjZvsh2rqAE1oPVaZZs9hGdsTtBUJcIf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781034934; c=relaxed/simple;
	bh=SLtlQnlTWllJJ3RSyrrK1U4SUES5+fk00KEGiaTpXzQ=;
	h=To:Subject:From:Message-Id:Date; b=rCdpQmaYP1WHYqYVEwfSIOGlnFhcSw1GJyJjSAMl4rbqjWGKGgvJaY/qHtqkZi/RfAGWe4ve4J5St1PRspgbY7cKfVXZnTiLlcCX8lFgS9etmV8AvSMC5+bR71Cb74Eks9Cpmhz0CUuLDchLi7JRDov/qBjcn4jt5yW1gczDBnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSm0XhGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSm0XhGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60E8C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781034933;
	bh=SLtlQnlTWllJJ3RSyrrK1U4SUES5+fk00KEGiaTpXzQ=;
	h=To:Subject:From:Date:From;
	b=rSm0XhGnLA5nSr5GpzTvMpONfVWfEjVRBxFkScVVsbKs+nAMVT5mdrsiX8REt9nQi
	 Rz/2gMyxm3PL2e/f14QHolsE34/S9Xn8ZoYN8TnFWisIgYWRfI7/7w7rWDnHgm2XVR
	 oUpPmupxjDwREv6+o15FDhc6xK0DO6/T/4tCeoQFFQxk6HnHq+ggni/nD4/bzQ24Vq
	 MAQyzZJa7F3YzmnKRhHyAr+uD5YoZIkypKSPutaK5iMRV4uiUu6l413n+grAW8FUND
	 C92mEtLdcDuyjgM3ykq3eDWGC2wgu7pVIdVWVGoekK8ypwJv3BmcG0ZDNK+29rDj+Y
	 9JJrhPguCnrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB68FCD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103493369.27422.2614835540009287746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78356ca4f7fc86ca6c2545f93b01abdaf65c61250ff695978eb921e8458bb83
Date: Tue, 09 Jun 2026 19:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781034933
