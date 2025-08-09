Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010E929DB81
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754749794; cv=none; b=Mj9GsM+819osulIkzu0UpSqmlZtsATrEFXyNtO4BhhtzsSyb1oM8BzlUz5Sq+hTjFZC+p3rj/uMXCsP6wCibx/0K5y7kJXKy709SkCvKIKJdpLtgRfnFtJRrYUa0H+uOc75zCvYQbhSIl6Tv+AZdB1w3t0FlGr047nFQnbMh2Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754749794; c=relaxed/simple;
	bh=o53+pIy6iD2M2gZjEyDbRkvV11O4YPWfR/BPp9s60nw=;
	h=To:Subject:From:Message-Id:Date; b=MlN2bMkHVb+EzUKUVtGKMooC/u3dYWf3D5XYzYGI7eg6pKeNs+pjkTg+hdR2br27qUY2s+joO77eXnoTx7+NwUxDVm2K1hmCpRAFtWN8woUc3JHYaffeIHTkRisJsBXhap2gHMOqzM2Bxg9E6itMo+eXq1qCRfKne/yqmlBLjjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu6tX8B8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu6tX8B8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754749793;
	bh=o53+pIy6iD2M2gZjEyDbRkvV11O4YPWfR/BPp9s60nw=;
	h=To:Subject:From:Date:From;
	b=Pu6tX8B8Sot9MRgztKXggxWPbKmmnX5ji3psgKxAQBn7va5TBADB5sg62Kmjw8HYG
	 uUbloho52HneSgDI8QlUlq9ItWCaUIk7NITvEd82YBEh+pwLzEDkBbvDnscrDA1xsB
	 zfqMk/5/CX4FQoLL9jM6C8bLRLNO7OzOyWz2TsE7fkkFxM6rZPAS7Qk24BQO616SV2
	 H7DcTC1mPavF+fSw3P3BrycGYD/NbEp8yrd/cMw0PnEEiqwaljnYhPCCx9LwzNoX0u
	 VGDxc0y+IKvUsbEu0sLmm03ZN+0oo6Z3SWK/TaL7cvlhWw0G1514tNvqCdew74F2t/
	 GPlIQ2+rhKxbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A0EC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474979357.27798.103828777907901523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30a5020d38312be85c5ed71d8a36573af358616e4462c382f9665498f7973e5
Date: Sat, 09 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754749793
