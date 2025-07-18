Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A2A2E8E0E
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752864593; cv=none; b=pvLetUplq/vlOV6rSIzoqJ1DqNQqdOMm9P0TSyzOgJ8XbBzU544NwuLP05eSTpz2sRsa9IjpKui983p4Onk3dhXEdCfJl7BAvbYY2+Vv57KM9hSjWK5dnd24Lf+NkhMeiT9e3XSo/RDuCqOmBBY/QHVB2BLFtxdSlgZPjrMEKEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752864593; c=relaxed/simple;
	bh=TnoXJuq/aSiQAJyE5JRc+QoXVun3/Sm6qa52DwAD82U=;
	h=To:Subject:From:Message-Id:Date; b=LL9yaPxkAWx8KLgPIF0FQmxh7oBLkphCzrPRQZW86hOBObFphmOYF7WIrTjlPi4vTI+y+9KPpQjY+tDm0M7/9u3tx8CKhh+JIrwG1nQqhJxC+vCW/iFGaSE0Hc1W87wJGLbD2Ppf1ts2PxjNJk03Wx5VMlKD4/sFRr1wrNFLihs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvQKKZlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvQKKZlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0010C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752864593;
	bh=TnoXJuq/aSiQAJyE5JRc+QoXVun3/Sm6qa52DwAD82U=;
	h=To:Subject:From:Date:From;
	b=fvQKKZlbWBT8a6q31LVTAVTJjO7OaI2yxoZhHBuWRCugevhCX3D0QcamQ7AdbN7jz
	 jrwJGq5B35TFLJjEyITCJ2LnO77R9eeIAhO7TAlKpKM3K+qMk1HeyXk9d3e4p4J1AJ
	 a4Z3sGG4Hur5r3LUesP3VdEn9SeASbNHbdtFC+oEVrJ2yXopsuZqzbLktJiv/Nn3Y3
	 gcQrH8FLtYAFdqaxiG7L0Y+xDont0GIf08hl0d48O/d3tIWU57+dtUfbGzPFjbWzFd
	 ebG0hm34J/UFodxaNVEWMZJZKtQp4NTqsOoFJQbdq5+Dc7VA01vujMGaoFlLusI2+o
	 4AU057E89P7lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9107EC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286459358.3057.225864819160447550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa80471c046ae0e1358550e8f98db8f7eef789f6ae0e29248382273958fbbe8
Date: Fri, 18 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752864593
