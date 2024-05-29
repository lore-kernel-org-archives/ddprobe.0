Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658BF273DC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 03:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716954263; cv=none; b=JnpA+4xj+qiNuwS0pzF3ydL25zeTrWEiu1zpJ9lZIzFSxMPNoyjeLBB/WtJ+2A0ys/sG8bKcF7v4M8K7Vcemuum2m9SRXKKdZGOcgIj6YcHXiUEMEghc03lr2yDQmuhqeWRGM6hvjD6dWzx/PpAeS+sVX8coB8XUhurk6gj14tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716954263; c=relaxed/simple;
	bh=aJXf9Pkz1/2QsbjxM9GSVx9iw1SyGALmlxRa0BC0FEw=;
	h=To:Subject:From:Message-Id:Date; b=qFLpcqMKvy/hW0eJQGvOhEDsN7QnFqRu691Plbckatuh5DWdrk508wz+1W1z2hPVy1Lr6rGOenNhvqrJfYLVzaybYc9QmemFGygh9QRwUhtFLDGE7xCOgTx8bJiN9d5Oav9CjaVFJKB1YUPjGWgKiZFTmJdR9KkcKDvPpv2A+6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N06lI7wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N06lI7wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEF6C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 03:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716954262;
	bh=aJXf9Pkz1/2QsbjxM9GSVx9iw1SyGALmlxRa0BC0FEw=;
	h=To:Subject:From:Date:From;
	b=N06lI7wz5edEwDcPX/GqesIpAHz+IIaA6UrpXshR8tLMbecD6surir09xXEkoQL+k
	 lPv+8U0a2w+a71iKcY4cQ+RHJVCLzVPIkv7mdYJB7ZSiD+GMUAdsXNgzKSnpbxq95r
	 UCIWo6GPP1L1RlxtB0qMZ+bwL2Tus/X7iTU0q5xyKX6nyKCmjaZ91Fa25MJ3R8kkbu
	 820jBnqIJ5jaV2FH9a4fsvYzxMUrDruuJrfGQFoKopCMDEITAIsIPDxAv/v4keD0CZ
	 BS3689JpZlqST2WuvHExuPakVIJ7pyhgqEqtf9o8eUDOjM9qlRCG3ZKGji+YNr/Sa1
	 wGiJWmELaMJaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D3BC25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 03:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171695426279.5885.6626639919720133056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3abde5008adf20c236a67420cffda673d419351bb7ea7018db945a9156116f
Date: Wed, 29 May 2024 03:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716954262
