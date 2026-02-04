Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3D11C6FF5
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770233634; cv=none; b=AM/yiHS4hddNLmOFjrUheoTQfMHBGPrgZSYytOguF0K2jRlvk0g1NFcplO7+c3yuV31BpCdDrUpR9RRuCTkBjjAXflu/F+/b7MxCAai4LdtO3S9AA4nsXr6T7ZZDcxhUyUKKpv/RxGvR7o8+SW9o5BDRYHl3CF6nLatpSn6ldO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770233634; c=relaxed/simple;
	bh=YCChHT810pGHrhvmkvw/sZovjAcdbwlMKslj/VtG4ks=;
	h=To:Subject:From:Message-Id:Date; b=gnlQ6+M3FpyTnjuCfpJLmG9lLxFOnmyJmMFxUf7yeGpxDpwV3rRsS19Yt46wbRrFkQvKqD9iQwgVemh5KcnBXL+bTiZvLiawybM9rfFk9c5tAAgYhi+d4uNLR4p6gLXR/WlxE3Z9Yir0go+V8JHZ7Bx3h61WKGG1jEc6BNh19qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iskwirkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iskwirkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE7FC116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770233633;
	bh=YCChHT810pGHrhvmkvw/sZovjAcdbwlMKslj/VtG4ks=;
	h=To:Subject:From:Date:From;
	b=Iskwirkh6/VRLrrO+nUMz8sD5I2n+ruJmYmZwrkiEI495d3EwoSxB2crE5gCwaWWW
	 fZh7xfi50QVHl+1SSdUV6y6wEsEVt1sQr+I/Snwe+r50hYDSc+xAlSkQz9H1MLgkh5
	 dTe/LVp5wZTZxe0Nrg+A+urI4IXNqhGUBfj0DBgPPAHJsVUWguPnlgNsJCvb587Gl3
	 wqcD+MxcanYqJCR2ZfoQxYkMkVR/bU/G80bSkEsUq3yha07MVcOz9sxrg0Fxo6w4La
	 XBBJk5pH/p4r88JSF9DWEW5wFJ4DBfhAHCOs+5A5TmX7LnDVOlC4jnpu7G4JwQboFB
	 sF35fETMMMg/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CD6EA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023363366.542.6212685110534944087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c02270946ca5a6b419c22723894357eee8c67aaea7d0cdf1e942efaeca06caf
Date: Wed, 04 Feb 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770233633
