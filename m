Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0779635B628
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769521434; cv=none; b=uEws00NMv6L6msO6DVur7vSZW6/VZSAnQVVxqZmmoV5EQHzhsbdZRYtTDZ9R56L4/D3mim0qbonlkvBrO2r6/hKG5nxgLBYSaM3Pm7ABmTWr//C0O7W2Y+lE9MwnFkeeNzhJmGLQYEbLEiN4zk/bOnZLjSTqMV7+M3jEkF+s8yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769521434; c=relaxed/simple;
	bh=xDfDgwtDcILFFrp3sUHl3dQ6AFR8K4l6JFdtfNbOgbA=;
	h=To:Subject:From:Message-Id:Date; b=qJXMQDJFUXOdtuxsepD5vFB+nDN4ge16rdFgodpunUF4WG51ILKe7ixrkOO2k9PaffiOl/o1k043ewOYC3Cgclwm+ZIJxnIVSQ9eWNLZDk7gLJG87WDzV7CuPAtwKrqhPiyAUBTluoZ1N0sWRMYgkTZb2f+9f2IJrs8gSk0J/MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fmbcjf4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fmbcjf4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3C9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769521433;
	bh=xDfDgwtDcILFFrp3sUHl3dQ6AFR8K4l6JFdtfNbOgbA=;
	h=To:Subject:From:Date:From;
	b=Fmbcjf4HFK8DU3dFN7t68sUwgPTS8RfQRVUSyFeg7J2RA9BxI6UrkWeoDFnq93+2c
	 NaIuM6QSBoNtn1n04mWGXmfRcloLaIlDSmxubyO4AoEo/2dBMRGqdXqD6SP3HFX3zC
	 MFO3/7CUzkgwQBqur1jLXTsK+76wogxtvS5p5akZh+tiCaNVbufuPtSjLTDn/faald
	 4xTdoBPY02qvpz1y9FmiYGk/Z9pPb7nwqTHVGhR/3coXbOjdEctrFqcik1U5jiTWWs
	 F+QumX2l6XICuPy2S20uu679NtP0exm/PNYmj/YSPW/rzZ9oyubv9hQizDjLyDfdN8
	 k7S6qBfIZ2ScQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E405D2F02F
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952143363.21433.2492986437396755769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261c82fa85c81becbc5f659d783dc78941db8b63ed3f5b00c84e69b8d4252c12
Date: Tue, 27 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769521433
