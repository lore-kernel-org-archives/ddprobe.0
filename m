Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5F82F37
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758493794; cv=none; b=ByzM+IJikKi9FdkHKaEvhnRZcGxJyeg/xmUbaAoj1iSI00KOnostVhZeglxQfDkoLAd3Fbp0WUFD1LmvZx6jUR/9jmsN+i2H/R+hOYJmJO+ou2Dl+fvFb7fq0mBSqKNWVvLF18u9Q1H65+k8jT0n0IvAsl+JuSWs5HDD7hBz5PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758493794; c=relaxed/simple;
	bh=Fx1ZO4lKURQujlHHkjLoOIEwJRkNCCpEd2l8Hb0iW1o=;
	h=To:Subject:From:Message-Id:Date; b=j4oENjkK9dgSFbrvbxvnziiXK+PhIIfTWsDwGFh2GAPNayL4kpVLm7bLVUn4ksniB18ueB5xPdcapMsaPhFjnjx5KE9vb7FdMMG3vMKXefa1ICT7m9Q9GrlwL1rTdEDlyzcM6+ftXjtfmvFIaXQYb1Vg0xCtrhEIB8NLWEm3104=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aoz6yKVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aoz6yKVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDCEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758493793;
	bh=Fx1ZO4lKURQujlHHkjLoOIEwJRkNCCpEd2l8Hb0iW1o=;
	h=To:Subject:From:Date:From;
	b=Aoz6yKVFv1eZjnNIREfTpPA37A1zAcR0pFQVeii4D7NWaI+bUKcmViuBAL/P1wSGa
	 Lg2uYFlu2K9Lur7c0O+BKvwGbk7ycMt9keNui3ww2gm2hTt/AuaVYr81pa7STO+JC9
	 GEwy/L8Jq8GXJ4eJ2ZGvN26onJp/aJsiTl2bjVNG1sjkfkN326Shy0epIAWA+EuoOx
	 MGVa8EY4a2CzYcI/1TeRzwgLfvp2MU+2po51A9uvKJuUHqy1rnXQt4lfY561gXNpHX
	 qYl2KXq23/deTjSPZDjgQBpgWfYhlTok6FYw+q49o0LaWShYxM+qT+Uo+Z2QyN+cZE
	 jHOshEDuXlGMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF59CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849379357.16145.16927728100351977966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588b098adf8775fa8776eebe4ffc9bbb476f1a58b0cefeaac13ad7cffd55336b
Date: Sun, 21 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758493793
