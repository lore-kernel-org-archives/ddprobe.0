Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F2A18DF8D
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744498794; cv=none; b=GXg1VZwwG5nH3DqJRnHlBMZ36fINUVDtRL94sLcMNQTvePe9wMxzA+2ck18A8pxWS7DWiNRZvddsi4eG2fG6upYBAqSH4/PikyhheZJxa4oc2dVYjROP82LisphrHbBVEGTvmGOCusqePcRHYsm8Om4cRAJ7g5GPIxk73nuxUzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744498794; c=relaxed/simple;
	bh=EF0/jikCJrcl+ZZ66xJjqgFSCNZgACGnLpWOSvNQ7Oc=;
	h=To:Subject:From:Message-Id:Date; b=oVhLrJoYXx3CArEekq+ZzK9x7dOmEbLbZptMRiYoGJJva96mmp6ZNQ5oDPOlsbWapAsodI/4VIFpOPtCD9/2CIlXHCN0c7XZubDp8xdVNdeFe2fMbP7P7hO35BVLQgoCkv4DHYcPDjgULk+cApLTVM+mta0A2lu0NgmxOezyDTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZGw8nZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZGw8nZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BB5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744498793;
	bh=EF0/jikCJrcl+ZZ66xJjqgFSCNZgACGnLpWOSvNQ7Oc=;
	h=To:Subject:From:Date:From;
	b=iZGw8nZvx8yXqWGA60+1gOJOhWAKt8h6152v331+1pHlIepBwm3ZyjIXyS/oiyQge
	 3uLd58UYCfCZF6uTZHAwVF3AkfSVMGdX1gebN7N1awI6x3KDYUCjgEwO0l2Px6R3cR
	 g+IInKlsAMG7oVHig99P8SuV2Gb1wKIzfpqj4YdROYNy3BoCZ4kmF6wYLQxPzU3jmu
	 gXsVa+afEV8g2RL2Fo0+/H/Lw1fZmnv7eZGKw0XptzIssZrOxDBX97HYrq6NvpEm1i
	 Qys93xu2pl2ISX+bCKN9nzBpRXoZU0NpayeXbHBC2DFz/1AAx0aH4uS2fF64cxvvPr
	 UVojjHqwrDomw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93045C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449879357.23103.15494101591540806144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2260fccd3eafeae75d719247dec7612b85e6aa38f17c00057dc529a586e45bdf
Date: Sat, 12 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744498793
