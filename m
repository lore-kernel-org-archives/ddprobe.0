Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8E32772E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777490854; cv=none; b=CkvwmAnm1JmlN//b9Y5v1LW1ijU0jD5aW2gJqZR3OfdBXOMeeE6XOYwM5NML77ZdPItsSn2utnxNPFjABOe32Ofs2E/EGVB5FSTVUICW+kI1iIMpaEO2NZCwmhXt2k/tfG2lBucWFyRzjhJFv/bFwcY3xdFNW2L2EFkVN/x9lUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777490854; c=relaxed/simple;
	bh=z8cw9DG2pw1hZV0OO9Tx2xDb9FHc0bDaTLOTqzlpj7E=;
	h=To:Subject:From:Message-Id:Date; b=lSAyBRHWjAoHTf8F/diV7VKgf2tPU72vflx5M6DIsfvjtEh0KF8+OdiCpz/S6QYyf5V2htpDaBSx4uPuqwTXGTSAJWOBCXMMiGESs2GK30rNpo5CSvgJo5/9hcKajPK6FesQ9Gc3jjlSC3iJgfutuTgToAOwLUYpf1refI//y5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqGvMRyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqGvMRyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8F9C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777490853;
	bh=z8cw9DG2pw1hZV0OO9Tx2xDb9FHc0bDaTLOTqzlpj7E=;
	h=To:Subject:From:Date:From;
	b=QqGvMRyuB6FAaM9AKg9whb/DZecTpIqeS63vnE1cnilKkD3btj5YE7ymQnBfdnK7L
	 1QFW88B1lVVpU6v8f9RZBmZECDm0yvGy9P+nKRjMQyG4UOLp1QUeQ6b+ZB40aksBuU
	 EVLAYNRjKqQ97tJpTxt/fST3D9ciLsRXpdgeIP1RvAWkJIPRl/PBCRW0AMU+zFlUKG
	 VC9KF6tZvKF1c1LDEJlRKmPHeGS9kqX3h4wX520ZDDFswrsEToQI5Pban1B7tCliCG
	 2uWr0xuCEmI1cHjS9iRPPd/1s0cyIgcgmrkMW1tBQzXnS/p7XWW5jVDtwz0eRlr9VL
	 Mune4If/42/rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA91CFF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749085368.18107.12670857038022007447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f036662208bf4448e38f0403cedfcfb1760a614198b4e3448babc785b691288
Date: Wed, 29 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777490853
