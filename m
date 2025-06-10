Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E0129D19
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749518394; cv=none; b=XOpJFrxqCgCVpCRYfFjlUEFjYe9bUXCucPXmDX/2T3avGMvKEtCthUHi4s0N6MvK2o1aEAWtC7rgoZP7cXx+jTLvnV7vZ1rkwFZm74DQr5hvls823VD5bxE4kKoiH6VHTvZi4gitFwMq5fZkH4AxW5xUjoasfjLXdE0mOPGV6iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749518394; c=relaxed/simple;
	bh=9yIa9j9Cq1LOgI/gKwp59eKQ/Jixg2tTQHwd7R7MUE0=;
	h=To:Subject:From:Message-Id:Date; b=WZnIOpsk8i8HD3JgDlWevj8JoRUrA8qQifOiVmDXyaU5l/W7lFNJu8N2X5AB+ixsg9NaSNDX3yS8qv7XAB4hMyX2cw6y5JYySU1SaWQZK2cr4Wp9VfjGjvankgz3lCfI17XzW+e6YYoDRJZ2iK3qAZj5Gay/2/s4YsfBcyBwTgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssUevcsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssUevcsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FC3C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749518393;
	bh=9yIa9j9Cq1LOgI/gKwp59eKQ/Jixg2tTQHwd7R7MUE0=;
	h=To:Subject:From:Date:From;
	b=ssUevcsidFaRNG8McYDJbwVzAa401CH7lWdeO3+RGUD2+LRSp+wYuh3YPxssEI5X0
	 Ex18cKqLHEJX4L3M3Gt2wbOnkCMGxxzNKXKVNt+0pMxyUxsVf+SHrqY3A1betXxJtT
	 idharLMBzvUWXF068BG/gP6GfvVBJWTYJRpLZpqYXWXBZ7LEdyy4U7G3DySlHoMElB
	 aSWARJMLG1lZ97czKSQnZRTDJ4J+mgTylalbSVl79ojgiCB4eLU6O6tv5MqZU0dVt3
	 thUXX0x7kYUZ7MUjuQgqqPybfVFMpqjcSt4Pam1StyJKXK3BPsHEi9qaLDDMB5k2HV
	 kYspXa1EG33fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FDAC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951839359.7709.3578118970904842296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095a84b086a2d3cbb654e8e09e955787fe5a2d2a67dfc8ba8405676030859a3e
Date: Tue, 10 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749518393
