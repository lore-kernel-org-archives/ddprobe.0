Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2A6CA4E
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759717794; cv=none; b=uky6memq8IBZX6cp/TdiV0z/qtgfiTQHDsq9PTBaDFAJo293SvKBd/oZxwfuOAX0OWvJJ9Gcp22NIqkaKmM2Fz2D/GZaO4OQMa0Q1VtgoMJ2YA7yOXus5iXvujK7P5HYWe8/7JFm70Xv8Yu2mdwcUJCt29TUsk1pQLTZlZVeD6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759717794; c=relaxed/simple;
	bh=h1/4K+9dp/3APRmnFe8+G0PBfwpXLuI6Z4/rFr+HEss=;
	h=To:Subject:From:Message-Id:Date; b=S9I/X8CT9nwCnYsCox8cZP7KpwHEcgzcLrxpqTBRKSU8Nt6K8MOSPN6/lntuvPadVYHfg+6UmZF0bvI4APznelCI8KfMou0wt3G3huvVJRBe5rIECRMmPZLVKb2UbDMrcsEgohsnV27auG77qi2zBwZ5E2nWOhrP+MqDm7OoSpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uH3fTxzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uH3fTxzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31AAC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759717793;
	bh=h1/4K+9dp/3APRmnFe8+G0PBfwpXLuI6Z4/rFr+HEss=;
	h=To:Subject:From:Date:From;
	b=uH3fTxzHBQsQ8bLQ1TCtvoW/G6dVUuO4+3pM5xkziZbAy6aTuG2tdXkQp4f+c9FCE
	 KIBSDCfkS53GSG5GjJJ8fLNyAFTfbl7rqjQDPB970N5k/xm0RHp06AMLaGXt4QpPN6
	 sRwgr9zDhKO3WjPwjYAbFbhu0r/qrWok4hc2OgHJSxsEPaZDee98+JgDXK0NNNs/QR
	 dBgiAUIdh3Rj8JOoV5MDhbtDeQXuyCTj3ldqUeRMPYkkvxok7sTEgtrCdahYwTBSNd
	 qCXk6fy6Y7PsHj6S211tYAtP8n12BiuyooYuoLcq5j7FXQKejmQYwN2zX4Z+TO3Rja
	 FxIBpsRnpOYYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92013CAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971779357.29454.2998770849643894773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0286a4c5b0a3e08f5c74f84722d8d62d21e3b3ea60b77026e069e22479bb5cfa
Date: Mon, 06 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759717793
