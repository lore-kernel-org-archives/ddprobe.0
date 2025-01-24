Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695282B9BC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737685554; cv=none; b=Q+QeNtPh3zO0U21zbNoUfJzi/NplQYTSt42HUPp7P6MVkHYkQkVsJlXrMXw5qdqzhhUveikWIWY2WDhqAx3IXpF+MN/T4TtwRZStreKc4IntmxwdYaP9VpUUTqlYX9QDhtLIGXwaLBfxTEnibnKmd1RXgvn9o/q/dvCvqjUZUAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737685554; c=relaxed/simple;
	bh=R2SfEpHOoE3baqj+dNJ8m1Pf3rwoG4vCxRP7pwgaGy0=;
	h=To:Subject:From:Message-Id:Date; b=Wfvk/L1+Sxxsdiwtie3zVsOuu+HTlAdoPIDwLqIojnlSUdtpE5fYyBH2EqnR5zFs+v1eldHZyooRd7Ece5lJbGDYfxKOiL34+57sq/rH75wX7b8sAtQZMNYTOc7+LeMLSdbXpglIR/joZ57YUTmNZP4l8u544mgk5tL9sGFA4YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cD+wIgK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cD+wIgK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33E4C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737685553;
	bh=R2SfEpHOoE3baqj+dNJ8m1Pf3rwoG4vCxRP7pwgaGy0=;
	h=To:Subject:From:Date:From;
	b=cD+wIgK40Ml/ygNnV16HUV4L8PLLh0AA2aLpREqvpQWoNqhgJDAhKKjKSTnqyDm+l
	 E7PwC9FvbtzWzCyDbDVoUqyjaYwNS+bFcnbraLuSxCzpeDxOvDCRxf8qW/FTFyXDZz
	 vMmW2A7GrewwyI9Oih1neXgpfr2QmODuSMgkol4J2mCYZ+pTnnHGXvdaDvhUPVaTcG
	 XPMyuKHsyQ6VxMhe7HzDM0mCn8qmcMhQ3+wu0P8u0P1iZy6iMDMZDYihcp4THQFxXX
	 CR+crmIRr+M9vVhewWiSMGXptXFMFv1onhfpfOwwGttOzg8QAw6f/gs3I9Fyx2RS1y
	 k+Ebd5k+Sx6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE078C02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768555365.31417.12028612757023777872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019a7ef3571622ee86272256e12519e9fad634391235d97f0a291ef4ebc0f326
Date: Fri, 24 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737685553
