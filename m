Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7A924469E
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762774794; cv=none; b=Qii2vZWdwrRExdIhA8WqrkRTjWWtuTKXt5jo6UhD4zsimIU0E31bfgeVfQeecvbGetQmZdjTaQ3u8HArYksvS41e+PurZtYpD8CsFRWDmLiwLODWj3aqJ0zvnonmvdgHs8RS2d+mcPgSfdkz+tN6r+GC7IBHc39hA4bdYS5ZA1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762774794; c=relaxed/simple;
	bh=Lce9zkExCupzOBEPLVKur+2xtiLjCuxJoeaHG4uhwLM=;
	h=To:Subject:From:Message-Id:Date; b=GVWD/YP3Uv3jU3dWgna+G+2S9yvGUr9XbcdjwIj+f96JKAV0cHl30tdgQwt+BrPV44Vousqn/rJBEuH1pC1xAnIzigfhX8UcgPQdJNYs2DgH/ALxgygnDSx6Xx1iy/2wky0YoFvUgQKLdoxJjmcblkq71EGcOkFFLBZM7Yl72oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R48zeYE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R48zeYE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FAFC116D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762774793;
	bh=Lce9zkExCupzOBEPLVKur+2xtiLjCuxJoeaHG4uhwLM=;
	h=To:Subject:From:Date:From;
	b=R48zeYE4H6kf/2AYGT5S6r0LYzZlp5B/XhaP2v3Rb5hD7dAQbV7DLOgR1HmQhQbeQ
	 /mZUAWiX32e2EzA5T+VmcYy3dZMSaavaL8+GdDLXuhDSN59ZuhKXpIkkrB1Qa6LgwU
	 h6cTAn3KLwOYIAKEDVCTf3OLEiUOyPLJmkfN7J/a//XMoDwREh2GZoNhz2O9ktqlXb
	 vUrZ+FdH/0b+Z6wTYwOmWkp5lrQQFLCtAdDlYen2jR84xfK+RJ5I8no/vIscLHYPAI
	 8Xdlw4XDhtj/SoqaJlW2qoBiZ3Orv5VngbOcHY3/cVjqnDJ3t2dcB4dSC/zHJrTTDE
	 SnPuRU60a7h1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97954CD13CF
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277479357.17928.1712822040021898958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15b16a13287478d922575f790434663f6375271e53c6c09dc3b8925efd53fe2
Date: Mon, 10 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762774793
