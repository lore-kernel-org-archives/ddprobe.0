Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3761D1AA3C5
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722366354; cv=none; b=hYfpuZVrG5URcerODex46LrqN893WNy4rzrlUwRLmlzMLGGMgRvoewhpJN9X3iZb3Ot0OSDKo4E/D3geS7R1fuzcym9qCcE47rbMFuKjH4PRfv8Tr52T14ZW8VCqydNiukyhfKFov8f04P1sK5ZA2UnNKQc2Tj/dIn7chVDkecY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722366354; c=relaxed/simple;
	bh=/WhH3LCK4xCUGcb1uzCDU8/oQ6zTMxFx9AHtgCQ2AVw=;
	h=To:Subject:From:Message-Id:Date; b=BiOUpbBTrCIGlpPJE8i76R7xyvmlhORmnBno1J0w8tOpBJr9IZ4lQtyxNtasv5+HbgWzmDPvhf5SUN1S1RLKAe4smhP4TveNhwanfCIVpf1XgOl71/jq7PBvqDKpp6r/KFv0U3LTFqGVtnTMOsRY+OnL0wX8ZByxgEfmU9SJU0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asIzuMG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asIzuMG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C67C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722366353;
	bh=/WhH3LCK4xCUGcb1uzCDU8/oQ6zTMxFx9AHtgCQ2AVw=;
	h=To:Subject:From:Date:From;
	b=asIzuMG3WyVbpyH8fn3m3yQvL3tNzOqX5Bl3KTjzmgCD6hkqYifdNcdXdsF0wJ77h
	 Zw4KszJZxnuHrn2nWWnbae2DUfcILjzFzbClhXPGUBROY44koJbkpGuz1FPsfokxbw
	 D/7pnUy8Hz5H/ub1nPOebeMQ+qI6P3eOgcYLQAr9H7f7JrZISjtTFqbsN5PUkQl225
	 8DumDQr97o5xUcQaRPTg95B1SwzXvwphILQca5ICzQHrsA0pJW1rUHm5AQoen0bfi7
	 /ANoqbOithwzoXuGPmJjSTs1pnfpIO6q3Y4xqKyxDCeNheLxya+++0npnu6NPRzl6W
	 gXsYobsBfdL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F40C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172236635364.24324.16033361876777667962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f7fd2a76b5e7c04b4d8d961b8bc6afef44e209af92ccdf257df6e18eae3f73
Date: Tue, 30 Jul 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722366353
