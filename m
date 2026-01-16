Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF942FD69D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768598034; cv=none; b=rIv7QQJ2zGnmvH/3U5X7cU8e4tBZfyK2PtC+1AmZ9XlsNnM5GD5gkEJWPD0RqyTa3CxDr/CGlYuC0MI4DzJltSZGREjrmS0KeclMg3vUgj2gPjcmtxGB0sjWgrvmgiPhi8m0ekc0eAxTHr9iBKx95qAXqyFW/NMNEn2Z3q/zr2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768598034; c=relaxed/simple;
	bh=4Su/WTiNqpM8u8wrlsMnThrKs9ELyalXj0F+nsvxBXU=;
	h=To:Subject:From:Message-Id:Date; b=FNBAD7Vbv3lFMjyw62jUDnuX/UwV1pWFbkOImIosiB8d56gZMG+8fRLkevhMvOKuEKBSg75TKX2YQ2hMto8o4+Akku9q6jhRBRMvPYQIP8yK2W72npx/W5aZDZ3G7Rc+/4gf4nbRGVtf4F5fna5agHEc1W5yDb/Vefr7SXmp8F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPZuttF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPZuttF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3778C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768598033;
	bh=4Su/WTiNqpM8u8wrlsMnThrKs9ELyalXj0F+nsvxBXU=;
	h=To:Subject:From:Date:From;
	b=UPZuttF+a3G1j00gdj3lveUSPUU2GHuO8EKM/YsYxLX+zGn4Z51fnVol71YvuNGRP
	 eafPgl2GZJKo0Dx7GQKmrav1Uzy/XJutyxHBj9/zzVLBE0G5vXiU+Bx2ZaKrCq1I7m
	 myZMkJBs9iWa03UAFDEowXxQ8YrXCWFu5YhsncBxgWo4iGxWJrlAZO+Y6Tyw1IsJ87
	 abh4EEIclDBxPiybQ38GlJBihvpp5syOlHjmYrMHlOunuzWYhPNmDS3XqYaCGRpJTX
	 NRn10S9bTjzxcvp4XEGjp4436pfVJtjNe/1qvom4LpQHURivJxxK4MzysmtgrFZwe4
	 8jboxr9f8vWKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F43C982FE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859803357.16480.7394012427437153569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6662ba945288bcaed46eb9714626abef18fb0e048a1f1690c131d7875cafb11
Date: Fri, 16 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768598033
