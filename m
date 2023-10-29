Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338BD39C
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMPkGmFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DAA6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698544696;
	bh=3eGeKLkHCeS1bi/nlMcaztqnG/CRGk4/2kx+Wo9esss=;
	h=To:Subject:From:Date:From;
	b=NMPkGmFpCBGMggOfP8DuFH7wG0zcvimf1FBZqBZJUS6qyuS4IB6bqWbiAvEHqCGl1
	 jkvMLSJVLXvj78t8vv7tk4jQcWTURusU/M0DFbzs6T+zHAwT5jGaWFjLoUS9V97iU7
	 DGm8qDK73PtQPDJ4logZC6AHJ+qDzVbUNpQU2SNzXcRztomsjv7QiR4SFLWuXwnvBa
	 njZuh0bYZie98+McMBR6WxnRj98U0IjZUzt8RapVXJ6UkDHopCPC8KpImXkaSuX3/Z
	 Mt2aDwuhnG74o/ZtYHxsJTcwg+dIlUARd+a/xfdgY3EF4d3R0VBkqyaqvNbR2IdGUw
	 22a6Gf21k8c8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5E1C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169854469641.11767.15937037104574078496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e8dc49b687a9e0173a943b2050bc38a203a9d13977000fbe495fd27369a36f
Date: Sun, 29 Oct 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698544696
