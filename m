Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E75D14F135
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737317754; cv=none; b=P/77Pq2Dlx5wQTkznXXqepoJl/2+Zs2bJtGjijE8BQXg26OoDk9mB7hBfqv67OOQjI1g6yZ0NoU/vbuxRGQQjtbgQpfQ54b1oTcKqFe63BvQw9XQqAy12odmaxCQVRSPR1eB09Pj/DQIRFMLQKq+k54PoazjD4ziDgPYui2+Ag8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737317754; c=relaxed/simple;
	bh=7yd2m/ogxpz6Ma1hTv2F+bOTcfvzWOlY5u90Wexu6sg=;
	h=To:Subject:From:Message-Id:Date; b=UOKq9asgfkrJRWTpqoXlz2OC1XqoozZMhpAs+hwBIYTrrWT/6ktZk+D6X7nTl6vMOnfMVDq8QNmP0TcXlL0bo8y95YCia3mo7I5zlVQpTRBIhi+LpqspTlKz10W2A/S2ODqqNCb0Y7cQcNqWz0qPArd6UwuAEj02jzuzi6tUbWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmmoqibJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmmoqibJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9219C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737317753;
	bh=7yd2m/ogxpz6Ma1hTv2F+bOTcfvzWOlY5u90Wexu6sg=;
	h=To:Subject:From:Date:From;
	b=KmmoqibJEy+7i9XHtZ5eaqyiyBaMTTsYknyULS+1DtqamNCtubZxmEXxclKhc7R8K
	 sExm3JIh+xFzfpjAEJuIkSHtOdRF2MhU0/bNY35Yrng3IWUcihrwd/2x8g0niIGLMC
	 dGvY++KKADWg2P+Ba+o6BHpWt3yu6sCWiB0TrTrpo4uR1Zn8N+Fd97ehvX/Y7O/887
	 8jGHrHwN3dKPPVFanRmDLyp+j7GLl7C7Txi7MyelXoZbVzKfYwIuO+ioEoMMAt0vgI
	 WSLw88+Cl+N7LUfaEGFrBc6t+H8ivsFJFQS4jUJCed/F8R/wDAirLy0B/Zuy5XinMo
	 MW2EXPNVdP4iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D39C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173731775360.24663.11075759778644558316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754d56e7a0081c153f56f643c489ff8485f207fac8513add66592803a71bb549
Date: Sun, 19 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737317753
