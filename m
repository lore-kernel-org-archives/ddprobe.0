Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA092AEE1
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746971994; cv=none; b=Uha1S+LZW1IvWWfW+CISQVtP5a0ru00w8aphsZTFVR8X5RGbC71oZnlsbRhGKfDvr+hktc7HeJrbosxLWwRQCAXs7I9de+LJN+iMWzNRDrSCon+juz1lHqGwIjqeWTpjsdL+M3vyUkrdIzKPWTOxWlJIEMC6qIdHOyIZAjrEQOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746971994; c=relaxed/simple;
	bh=HVgRkLd1W8b2zHLBSmjShJYDHx+ZdFBXkH49Z6POnEE=;
	h=To:Subject:From:Message-Id:Date; b=abd+7SEha7e6NqJcHVVX3OTVIUYCF+ZzdWYtCvRcA59X4o5p/aTuCT7KwZDkbpkf15Ap4IrtFIJdZFxrJL4vT59Xoma4seiZJ/aeqPV4V88ADN9Hb0+5Usp03eb3m0z3VrLn0OIjT/ip/MlaY/rAN1xLzCIMm2E5gZSGeQuzQsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLs099/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLs099/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB83EC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746971993;
	bh=HVgRkLd1W8b2zHLBSmjShJYDHx+ZdFBXkH49Z6POnEE=;
	h=To:Subject:From:Date:From;
	b=cLs099/z9EnNwojTcz68cz3tGj77ZJK5uKi7o/b5Mw2Jt4JEGcudlXBRCY/tQdDHf
	 vikowed8DyotirM8GfCuG2mGViU+H//9xLNRZNBrvdceXTdHkPKY+SB1ToHKGdsmei
	 z/S0naYMEV3T539WGqLU9rfXZZEXVy4NO5oGMDHLHmd4pFu4lDoLk9nGeIhVABuio4
	 7v0fLFgzVJYq8OwVGVoqRfIEC3V+XHYXFOw9lJpXf0grDMWg7aC7Qk6ro6dwGKYe+S
	 +ZVCCb7tywdF4VDODMYbSu/dtA6pRPP5s4LnKrScSdOM8ea2EgSlKJy1BQ9BlxcExL
	 POaGHn8KQlNIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CCBC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697199361.24873.4233093143822277899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0fa664b1969e5feab11dea0667d8b2ce35d805b7cfc882656560f98a54fb76
Date: Sun, 11 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746971993
