Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C2A3C07A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774788894; cv=none; b=p005Lmz9sMwxgH2FhQKyIJurIx4zSb0K8wHWbXy9K+z5JIeJQDndJyaidtM4fDwGNbO4sb8GS2kWsQ2xSVJhBndWgLqRCnBGOGX5BtRVa1iwupYu8ln7HNw5qO6JHG7r4eisa0cloN4hkx4xjvXWz8Uj+7/kY9yDEOUCRoJtLvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774788894; c=relaxed/simple;
	bh=TyIfwfj6EsOk6oLwxdPcCc1NM2LGfYNjA+CzxjH95Us=;
	h=To:Subject:From:Message-Id:Date; b=Mt3SozOcWaxyvWMmaVXH+/5jGANVBFyx/4jx1KunrwjmmnAiaxiSxJVrBGdiAvBKmb5RPJb2RW0tVuIZcWmkdwGr/ZFLr0kkcQoHGhxzH0OYzV7UWcn+GjpPYaRISEIeG0RJDvQd2Jr33aU6a58Pg4Ve6mYyB8n+FKUz4k/b7EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPTSK6Er; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPTSK6Er"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56C8C19423
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774788893;
	bh=TyIfwfj6EsOk6oLwxdPcCc1NM2LGfYNjA+CzxjH95Us=;
	h=To:Subject:From:Date:From;
	b=NPTSK6Er+W3hOL50OIgjwpPx1olqXEyBQwCmKy5r1zhVDnfoCWjy1QX128KmxD2rT
	 lOWozcLbk3p+Q3voRWBzJMJ4zUGdrkx7cbO5nIrjsD/VjExO2ui07VlEZkYi8ssowj
	 c/BvhBM3WHDHQtin+7mTkeYAFaZuFJASD/dH9WvqVYb4Nb3aCvh0eSyJT/GjaSmt8x
	 VOBEp4nw84p+q2hRhNkkid5oYj+cR9jQ/mXR2bGl6KEJNOOQnF6XqnQJS4465dmf1m
	 ka6tI76k9Bpub6EpNYPflcMo5dc2PejJoVsjNbWQrPqurianW1n0mniozVDuST0oC9
	 A/YmXdvMndh6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94326F3D603
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478889358.18177.12889449107991668526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c930d107cd98c98037d4e4c2984217a212dec78926dd55645637fa6e28c5b8e7
Date: Sun, 29 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774788893
