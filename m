Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1807E361649
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771974894; cv=none; b=aeHbNqmThCscGF+C0V1l1bOYZznCezGIY4EzTpfKbd0/ewlczweIGOkilMPHgKGRs8rRIcTZ4LmbNL9ro6/mOwTEp/0Zq7LquXGLHEGxkUEQbJX0KG3cAF81FcQyuJ/5dk01ftOc2IOl1PFXQDslKpGdnWGLjxyig7+p8J056VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771974894; c=relaxed/simple;
	bh=NjTypRRuefBsKsOEoJWIxSo8r73uLJNCAqtCkidgX4Q=;
	h=To:Subject:From:Message-Id:Date; b=fRIGqvQoeSgYbqWf2dR200OyQPE1TJDaxObr8bNxuBsouSBF+FoLy7buNTzQ5ovIU93d5XOw6z+HzWXmHZnpSpqToiVfh2fP7pw4PjsnP4RBZf0y17pRdzuUEia8zMLcEHSI7yILTPs51xMfC6F6HNsRdGpZLUJ4p239LrB8RHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFOLyeHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFOLyeHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAF5C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771974893;
	bh=NjTypRRuefBsKsOEoJWIxSo8r73uLJNCAqtCkidgX4Q=;
	h=To:Subject:From:Date:From;
	b=PFOLyeHUaSSKOGgGTFc6+EbP2Sidh+NQ546zPF5nNaL56ZKZihrxhh2TAlRYxRSKx
	 7jpflBOSYjy90rnR977XbNcpG57+pEYbeFMDw6rYcj6EqnXYVSXJGBUHOH8jZeBmNU
	 PH1yo1/KjDW1J0P1/EOXsSlwclk/NGu647oqm+NBiFxOJvDyMwwVh0y3ec8zItgJvL
	 pYkpePNx/H/cv95393+e7qYamhvVT1LGhcD92i2lY3r0qTmsm/1Bovjme63Fw4ropn
	 rlgnaKziZMoC4ueKTdS0uWKrC096VFj2qD7A1Gu942KT2Jln6BzVQ/ivF55wnRHQLN
	 zDquxEcRAU3IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46E4F5542B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197489365.28804.3262779439345754572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95974a73ae4f08a8f2b97d3eaeda4f7a5741fdd08a26cc3f4deae17ced1ef87d
Date: Tue, 24 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771974893
