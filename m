Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEF821B191
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777684054; cv=none; b=K6aGPrSpF9B6PDgbcxoXwKHAA8hDSBDP0gxiebeR6awep1ArGj4lsIOwb/G/gJXyVv2v2zzXumXqhYGc4ncSj5frq8niq0HquyrN/T0EM6RUzeUYpjsGVo790FcF9hd/Odr2MLBqMB5jt26ixI3G8m9ydW8G44wVlRWXWwJxdas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777684054; c=relaxed/simple;
	bh=94cJOonmKrBZBl3DWhKH0zWwzzw+opotBXS5qF+2+ro=;
	h=To:Subject:From:Message-Id:Date; b=HD8YQSCE4SSNlLsY8/k+F776TMF00CZSeMZqESqmU7KD1EmlV2p13BFHU/k2mfjsyYAlbZS2hZ7TsAFuln/+83hXbfO11ZVV66Mbg9dNPVjuI53DOfE0HZPoUfGVmmhFDyAaVqWtqEYQ0urSdyMSKmQkyqfA9Hfobu+9tml1SFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r13Fwk4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r13Fwk4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFCBC2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777684053;
	bh=94cJOonmKrBZBl3DWhKH0zWwzzw+opotBXS5qF+2+ro=;
	h=To:Subject:From:Date:From;
	b=r13Fwk4gSxjHtjq0moDC0hbRIyziZVyHU4+E1FTGG1BTKa1RhxFvr6i9ac/BHYP/w
	 Il2uoyVEarU4Q9L0GGH2IAeEcxgB22UyuhhnT/3Bp5Ni4QTFVPCiQQKB5YsN/QIPQG
	 VI5o9u1YNKLE4xa6J0vN01AwDoi4FlIblkPcyx0wxvxP+8BzQcGrTaBda6eewdrK7R
	 g+6SmoIH9YnkgkHVxxNG3/Hk8hCGhn9zEnGCUvIm4WQAO+WGpYfVsq0NBt0IegBLRv
	 0O3iGHKRl6ZVv3gO1CrV9FDdUSyXIad4LrWz7yo+uUz0tXjm+NTfka1n0nMddpa0VT
	 Vk4V/X/fk8yZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5E2CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768405368.7621.15258762959040586046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83be4d174d95727ac75bb13da227bf2ed785d0d71ed12b074ba986ad61901c4
Date: Sat, 02 May 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777684053
