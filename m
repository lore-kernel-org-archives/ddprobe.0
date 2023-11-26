Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8E4440C
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rguOfoJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8120CC433C8
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700992696;
	bh=akIACQTBJvprUcmVf5zvU9t3VQlPLkn2WIeNxge/4to=;
	h=To:Subject:From:Date:From;
	b=rguOfoJcZS9qPgrUrtcP9leVJco6jP1jtTo9APKNWDYBQ5vjreldsk8oE/GaazzYs
	 1dxeOezVcPvS7omDZBwyZ7FL5XWJkidOnkGlScK5w9ZLEnhcyRyuwczAUV7KJyT1LN
	 RPow6HRUCxeOuEtY2eK2GQmIj9yoYZujAtNsFj3GtKfXw5dNOqEInuvOjzfipv8n18
	 8VMjG+fbrgwXzGVIFxZFM4cA9/FBx1tMfwXOgUi0lD9cnx1/UjlckEYPTJWw1di7oa
	 J1aeu839xcbEhXZ1w0li2WZwgF6OdH4Vonc1711I4CfYV4sitfyi+RmTxJ9M1sBjS5
	 UZtY+IIXkuzxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CF5C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170099269636.15771.5065478886855497551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f9770c5d3fdfc1ae2654a81d2b77cbde3e06b4a56912d4f485a972e45a0c34
Date: Sun, 26 Nov 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700992696
