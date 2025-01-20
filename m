Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484AB1FC8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737381954; cv=none; b=AAJxu6qleNXyDf+pnJZlNI2PYdPbaT2PNsJEi8BFXRWVn49LogeQXnpbtoyYVVuvucs6g0fTPOdv5b0T6rK03wHO5L2NsrN3aSpah36bSHzWu0D1gCLUFQMyPikJDjNab0/kFqqOisqzoQPGndqJftY69bQGNJu9aTOfKfdeyUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737381954; c=relaxed/simple;
	bh=FTCGx1WhMZMFV9QLiR8UGCFvzjL2TSd+k7scfLsZzSQ=;
	h=To:Subject:From:Message-Id:Date; b=XBqYRWftvRC52I/ED8TVHg6H5oseC7hdjOxhgKC06GbE/OwmZWlIFx6Y2rXNEJ5Ow50q3neYwABJtiBfZyQcB6QvkQo/9G50xmeZyf1p8RgEbtlzJfz+Wrpyc8Wifit8ld/b5dW84jlxn1Mm7q2+d0x/tJ3Ot6O55T0tHmGhh+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEJaSrIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEJaSrIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D71C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737381953;
	bh=FTCGx1WhMZMFV9QLiR8UGCFvzjL2TSd+k7scfLsZzSQ=;
	h=To:Subject:From:Date:From;
	b=PEJaSrIHyP5Wo1CtR4dnNPRYO17Yx8ljDib2ZCZpwnfr78g+pitegv2Xl03SQ5Xfz
	 vY5bloACZ3Xr5cYWEBl3cmsviiA/HGR4pnGQIgiWEDPRQ8B55hJtOlIGLrSZFO24wv
	 N+oS5Cq9IwwbMCYxeowNEeUkABQ7WkiwHy23Id4eHtzpAubCOay3pzWtOXJw7L79ZS
	 ieppUlYTEY4Vc3PN/mOzOo7Y/VCECkXTyiWdZ5AMmPpj5ARucmjd0vtMXV6GfBIcf/
	 kHR75DCobVu6E9q44PjLE/ouMOLgxHywISRHN8O+guK0KC+2pM0vTKMkPhAtC9PoW+
	 Upu6qkGpMT7fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BE2C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173738195359.25384.13606789398491262056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c0ecae5efdf5433de27c8523e592771305bbf33334556bb08016d47fb2e19fd
Date: Mon, 20 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737381953
