Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C4D1FDF81
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729094754; cv=none; b=PB3nQmfTS/nNatCeQW+aENXE1LZedkEn+JgkO9D54lHPHCBeCpjN41CJJd66REIJ6duZ0VWee2ShUsg/nr6FCVA2eBnLnu61672To5pMWB4+wJJv49G5veCUFaf9Fk+Mp33v85iNwen9iEfjlR+rzUgT+w8dplMHYOsXHnbBFgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729094754; c=relaxed/simple;
	bh=QS0GWeJZcqbtela/k4n3P0eOgXQ/erazxbNrKBPWS8I=;
	h=To:Subject:From:Message-Id:Date; b=ABUuUAcImHWCy9T0RpAZIBcdjGjUc/vTkXUkMJ3N3F5qv8rNDwHKfeMsfxHNrmXnWfxJWxb4Uw2+VOXc///BUT9A26hk+ASDV/eIIT9kHL3Zpa0Up7BgRnyfNcmLZWHFln0rQKCNi+LU6jvZRCiIEPY3Tibi1LV+k9hAbHRCFAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiG0ARq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiG0ARq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA1CC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729094753;
	bh=QS0GWeJZcqbtela/k4n3P0eOgXQ/erazxbNrKBPWS8I=;
	h=To:Subject:From:Date:From;
	b=EiG0ARq+0RSCcK8to9U1eJ2O8/bZqZNhUvVUqsx81+ymNuD+AMkDUanI5mZNZCMGZ
	 ymOpqsGjItfVuDIfsJkKu5+X/GQavN8vhyP3Z27BrQoh8IOztDMMZhUDtVIakGbQnd
	 trYvXy6VXkWn1+bR8AFOJ0esMG10p34mBVkOihpjhXzFNDImLwwqQgaHQ5a03T8VA0
	 q8NlXA0t9jld0skN1eMIN75Sq/aMKsM21wgja2aCztOxoQsthHG4Sn0wXN1mvI/RYs
	 0ZHpbZFpbX6vEkNpMj+IFIhbOPpLBVV7n0B40eg0i7I6zifRxyPOttQcbHLw6JZsQe
	 1WYNpomBD3+rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B512D2A52E
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172909475362.19893.10667713562980309434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70f3e3f718ca15faa2e68dff3bd6266aac2acbc6981db690ae89304a9a0716d
Date: Wed, 16 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729094753
