Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09C8194098
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769703833; cv=none; b=TCvtw/qepkLhhdfiPWk1KR6ND9IMmEDuJzM2pJ8bV0YJN8cGBPQULq24OjPNNaoritr+SGOVRGuWEHs8HlchZODxWIPonVaENxWtAA0qTiuYKARRaCqTExAvDbuCTISkn9aTOoj7eWPdF0V6/fOY2jyoXa5l3tAbBw4dW7ir6ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769703833; c=relaxed/simple;
	bh=G0MskRp+EHHpL5212cgcbCU4vtRG/dVdG3aGumxmFfo=;
	h=To:Subject:From:Message-Id:Date; b=jX2nV/4C0ydvDutDrNSEfYHoRJi0jNEZO9Pw2PNlRtEHM+zEG6zZsH2FBMJSEN6CJU/pbQdxkoW/L8ySV4XATXYZRFqnJH1Sn9XxK866kDNUhDhoLrI/PQeovF2tpYadfwJBHNBwYzmv7RznzBnTggIiY4OJSbRbtgonvWzcWEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CC1Tngkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CC1Tngkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A0AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769703833;
	bh=G0MskRp+EHHpL5212cgcbCU4vtRG/dVdG3aGumxmFfo=;
	h=To:Subject:From:Date:From;
	b=CC1TngkxLOVlZvRq7/4SiijX8+DblmdLMMsy/RWUIXHBtEjPM/cUqdb0XTER//JbB
	 jI/dKutZcZQPvBHOtXrTT88YynX9ZE6zoOlo4lrYez6vRQqFnNdCq76mJHcgATOGAA
	 gal8tzIuknOXxmfDoFndfoROZO6MPG2e3CKxVxNMtDo5wpsZlO1IrKJwzOFk2GMWS1
	 ItP3NqN/zWGjxWAd6a71YQPy5tjFYmhnLOEOPJXkSEoVJhPrrjEU1dXMz/JnCaIr0L
	 yK/UO1RL7Ry4O0WGiV1NUJcrClOUbf/5fRdnUWvz7pCRGrTEDnlt9+rhdCTio4wnLq
	 XdMBda6m8qxcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425FD6B087
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970383359.22939.8698420227782458452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343171ed2dbcf44eebdfcb8736a68a2592de8fb78f7af4a06f5bcf33464204a5
Date: Thu, 29 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769703833
