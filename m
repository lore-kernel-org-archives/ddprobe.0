Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592CA2874E6
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782360454; cv=none; b=ZU+xyusSXFMWz2ROg5TaOXalg4a/BFiakN3lqHfjcbj6nlh8K0n/NMUyqcfc+1P7RS+ID2AA3hUXZC19pQ4Z0fXGhfhRhj6cbOO7SHjuYKQnYbIS8mZx8uuhLOEq+iM68//ocGLYcju6yekke4trcv5qokcNVtpijO3J7J16oXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782360454; c=relaxed/simple;
	bh=cCLSIhQDsW6Lc3pvj43FbsRamJGnr3cdTiCp3oI/yoE=;
	h=To:Subject:From:Message-Id:Date; b=LcFYQwKAk/Bu/c5TPKlkGqJjIsgYq+8d6IRc/54/JNSQTltIUluG84MTDl8aZj3mCBVmcHNylC21ipeaqexbGB7Y+bLwV5GoklI9ENQx/igQZ/ZvwObD1MaAiTFiiGg+YwJIvU6GsBw+06uJG9Amjnk+Q92jLAa3JSUxaayi3J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOReQiVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOReQiVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2AEC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782360453;
	bh=cCLSIhQDsW6Lc3pvj43FbsRamJGnr3cdTiCp3oI/yoE=;
	h=To:Subject:From:Date:From;
	b=rOReQiVLzCZL8SMOMp4/7+SmmkSEFmtC5R81haO/m5mFvryzE4FVwqxPZdqkZi41D
	 S8G3hJuReiCLSgh0VQrDaPv2StUOST9WIbMGBuPxHYGSCo6AXMqYdeBPS5eU0ULz7E
	 2zIJz4mq4WwVEXMiNeDkewYc38Xz9CScRmr1xeC/Swg+FGKawr77Lj+7+gn71nh4WO
	 31nkUKBymd7RUM0YCHk+Ncg21MvcfjQKWq6lUvPYGzlBEir/CACxlrx+nLmc4Qio/r
	 mZ2UWkdKntYWmqFDxHS08WiiLHYG1sE9h+FzS1h5NZRZKlrcbhOU2EF04uHShcNvMR
	 HlrKE9KWMVoPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B353DCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236045371.23060.7496326600743744112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17a1271d99ea82dee2df56db0ca4b3deeddbba6a6ea263c47066855002fabb0
Date: Thu, 25 Jun 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782360453
