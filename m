Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3608A1D54F7
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751228994; cv=none; b=kFs1TAzcYxsjgj0kSgESKoWHJzwrcSzuk2FS6Dq1wt1VPvFdC47nJ8CRjC2UaV+CbREknTfqLELWiTFOgKnLWEVRYPeyUo6sHklLT9a7SsfgBTKxvR9MwRZmynzObfI0pzP2QrLsEVSbNT3Bsxzdgfxh3lhI3X+0joXGqCNt+2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751228994; c=relaxed/simple;
	bh=/Bn3jW63GPa8Aip0urj3E3jJGJpXq3IbN3reysmEZJo=;
	h=To:Subject:From:Message-Id:Date; b=gWYhwkW57rD3iPSNh4B9mF8E6PNctk0cB6WSWIArmwWYrUv/MMwsq9yT8nryc6vXNKMFIZ0YLr2QmxeZ6VUtSBjoEN2ZHbJ6lYgy3R8OwxiKaloXKGQDptjxBuV3XfS2HzMlvqy/AHX0hVfHLwkobykIl41mXe/5Getc4sIhcH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXitopXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXitopXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A7DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751228993;
	bh=/Bn3jW63GPa8Aip0urj3E3jJGJpXq3IbN3reysmEZJo=;
	h=To:Subject:From:Date:From;
	b=rXitopXacq+E6z/qODcHpC0eeJmkIKqjQsWqnJ1f++/lstRF7JMJ3xKg3IIDetklu
	 Siu91EKB3eaWIHkqDVv1AWMxc9XlSU7jzppYLc/4YM28PaKfVp1rheoEunE1wcYA3/
	 gYWrHLa4VBLz+L1vQOxY27ks/4F9skv0ABYDFjirWk/rTHgvN/BuWIsS2bD0+fO3iE
	 xQrZ+Dh9sv7OSGLOAedMCJg31jEae7MGiyBddYqmC5OueSqpJRCCj/E3QNFMrtkT5g
	 u2K5xEhnKf+pka720wjOXFsmeBTVkbET8jhoAWMoOSminTNPCfhNRPVrbTgqPqwoIr
	 yPFJRIDHF7xnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94307C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122899357.3370.11533383454608334306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecae7fdf7eb312d97e073f717c49473cd30321314891a8588e2ce1c8e6dae7af
Date: Sun, 29 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751228993
