Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B87817730
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716742463; cv=none; b=N3Qap82Nbokn8ZwW4VG+KjSqLQxAQJ5iZL6h/61rLAksvnVKgADh8K8XxtxsFKKhoy4TMu1kRJhSjYEnqJZId5A+53j20q6p8YZnkuiPZpBBegtPio9zM7J9YZ2XrWrrIyM0uoRe9U3gL77OY0iEuKGRRVsRVrzD5k3x8bk09I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716742463; c=relaxed/simple;
	bh=AhHzPa6H7PKRf8OtQyCu0C9OjlcmzqhjeNO7mq5L3wM=;
	h=To:Subject:From:Message-Id:Date; b=gU+NTh0Spsl5m99zWgCCCtFXAkOvdNhV17s1e2RhvfDmS44qEvqgwkZkUFSTcU3miLPfEFqDbHDuCP2VNg9TLgiz/gjt0zh2O/DXGRRBl+NShPoC4r/DprncLi+nW5iHF0OVKT7FSisK+vu+llxP5jbHiSN0RY2zso0kgQLUADg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1NPicFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1NPicFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D31C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716742462;
	bh=AhHzPa6H7PKRf8OtQyCu0C9OjlcmzqhjeNO7mq5L3wM=;
	h=To:Subject:From:Date:From;
	b=b1NPicFwfQIm1OMBq8TDAHWhhQpzngcguFMjjQ4Qx0HNtbvDMwPhhiMI4+5qqy04p
	 kOgOwBEWe5NB8Ucsp4NPFAKJqrVvPiKtsvRywv9dwNXdim/soSeBAk53x8iNighKTW
	 E8LGc9Emyer4MWGuIY98oKXBjZ52VKfyQJXeLiAfsffi9MrDQvE47LuyvJ6YSfPUVL
	 ZCTm+4Fcq8Rcm4G1McOJi+Jgwo29EFxkmh3TMdPZvvhhKNFXHYopF8vC/zZWXOQpB7
	 SQWj4gw+yZJ4jKAEcJUYgnkEnneuMUEIUHHRr7m/hCa1xXm57GdMHdTOvJmKbDxC8c
	 XjcB9ewXmT4vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC37BC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674246279.6392.12716291723559924849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54997619ad4627e0ffcd3d1fbd21f879e7ac11ed95ff39f606313f55aeedd21d
Date: Sun, 26 May 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716742462
