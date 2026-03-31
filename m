Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F4836215B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774941294; cv=none; b=CYw1BZNWq16rE6t6qX9e6Ccw5E0zIjf1va+kZPhr9b9a6JAJxh+8duKf0zZCzwXtvB1vC0P4AVHyrYPNTW4tG0or5hYNqUDNm0J8ttwXnzwp96ro919AwRjx6jBdXpest8eTF+shCC0J4J9J00CaoLgmTJ7GIXwZWUhMbrd622Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774941294; c=relaxed/simple;
	bh=uIFGVVAuO5AY6rvxEF77CqIZYK/MGl4hc/vy0wa/2Ao=;
	h=To:Subject:From:Message-Id:Date; b=g68YeKY5EmTp+n/Aqxy8vXfmhEEXGn9N5yPR/3dqfdkqoufQk3MEOSqm8Waf6sVkXfQTOSErfO+w7J/OWbY7s8hF1R9wR2+G1LjXsUKURv/EvRsCew81wCFcmyM2HRIXMeooYIXDAsA0rEILa9cwLTLLvEYOEteocrKcb8bGGyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7sl5JvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7sl5JvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CA6C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774941293;
	bh=uIFGVVAuO5AY6rvxEF77CqIZYK/MGl4hc/vy0wa/2Ao=;
	h=To:Subject:From:Date:From;
	b=n7sl5JvUB+JVDSHfCdiFNhvryplbZOJeRXw0MNZTyeTxcybyLyF405/w4cHjAp9kR
	 5MmXquWAK8GydRhmVWXin1AsK9caz2OXrwK9eSbfdIEUv8hthXlUhscB71OMzJlfBq
	 AvV6RjKaHh+ZeUghQ8Trn7QmZ9cO7Q6JYtNDNVRmHxHHP7XHOcj0XR3n/qX0pjTa51
	 bHG8q3ydufQFWSbDeyERBDFqbMmglhzAJrqAlmwsg6YI+lnyawSnDB2bqQSXcYZTvy
	 hNRp2WCLoBoWqKA/rH4k3o3cnvomg3EiaBy6NUyDhbd6/DTYZygSsUe2szbJFK6QGc
	 paewrdjyYDF4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DF4FF60CF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494129361.6989.13911501802777857646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f623d920b9323a01dcf50bd367433e3b65f1ef680ef5af280c334b34267502
Date: Tue, 31 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774941293
