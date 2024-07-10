Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9F4381AA
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720606583; cv=none; b=FXZ/8qoXz9ravdfkwbsvGZtnIXqr4OqELng5u1MNymcd1wZqFV4f1ah9kiiSBsbyvA/J+Yn2QX+RkVpIGpI+hSx7jHB2qDD1gka39stzfGseVRdy6qK0GUEzOOJw7ju3VASVvDfPMG7BDMULNlIo5zCleXQHhCmX3YlS/qfKAG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720606583; c=relaxed/simple;
	bh=iXzpJAW9yZYlf3ecrk0WkQ1z2mKzQg3ASpupghZnBGs=;
	h=To:Subject:From:Message-Id:Date; b=Zq2amwt52xuWcKMkEmN+V4UWF4Y8S4fF6U2F3z6WoEk25Rye6B+ADjzXJpAcBnoSuIpT0CMJfU18g1dOEKwk+bHI0RU7JQHqLuM4KyEYQy3iENkMqPMFcwiGVLrwoVtTpmzVdKR7XTrlpd6U+tZvIzo2D+LBj5S5kgiZWBOFoDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sb6kqrCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sb6kqrCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F56C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720606582;
	bh=iXzpJAW9yZYlf3ecrk0WkQ1z2mKzQg3ASpupghZnBGs=;
	h=To:Subject:From:Date:From;
	b=Sb6kqrCmsgvAFFlTbloLZThwkbibcolCXqrYbIdMFwemXwwfw4I/7zhBCmwHAYQ/K
	 Jl6rzpK3D2arRKo/oCgMxcQ/O6XoKGjsyR0/MAIlQhJuWRaH8LZKhMKFSz+ncWNTt1
	 fLJENcneJyGnuq9QsLARYSSo2RSqLUdlS6WB/d9auaC+VWsDWaog2tnd/QklOVYeHJ
	 tI2mNVbChBYr7oI1U6B7nSpu/CpnORlcBoh36fsTo2/varMTyvjxBBbOelby7GIqS5
	 tdRxwMHwVHxQ+rJnb9kQPBBld8pMhryNFO1BzahKCX2zsKmRVIQR5j7VQprxcxXT9R
	 0i8qdZWfpqOnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E48C3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060658284.20973.8725926114828584709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb84a68a9baffbe31f85ebbec64f70c2ba0124684efe3ca9e46286b682923989
Date: Wed, 10 Jul 2024 10:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720606582
