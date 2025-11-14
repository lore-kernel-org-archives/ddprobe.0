Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F5C2F6164
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763111994; cv=none; b=YpPV7P1U28wwxRD35oQ2K8JdxDZMzSS8GE5drq0hS6VE4JihQBeNqegHxrdRhEnWYnc5mwA303XsHnk/GRjIgvvKMWjvZYf3A94MaPsdquWm9WoXlraEqZyczlYT/7HNrZZZMBTKqdmV3bPx+fwJYF5H6BmeunQ6/z4DV4hACVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763111994; c=relaxed/simple;
	bh=1SvoMKi4N4X0eo38wk0xhRwK9KsiEMWSVuDITRNuGOI=;
	h=To:Subject:From:Message-Id:Date; b=WuPmptKWgTeVC0AUS89e2Gx1ihO50SPMOOC2H3kSn6FUkVfq6k3adDbGMEY+DMA0BW7IHrCf8KGkZRG5ud01v7k7I3A/XJ/7RaasQiYBhuegVdKpbXEcDdwFOiuoGCBENYDVyRoOTZEYRdGazjXnUNzkxe8Dyk4xz09Tskog55o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXGwGow9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXGwGow9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C8BC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763111993;
	bh=1SvoMKi4N4X0eo38wk0xhRwK9KsiEMWSVuDITRNuGOI=;
	h=To:Subject:From:Date:From;
	b=mXGwGow9ywEKWSU91zJSCdtgkLvDtDjLLhyp4sNCgMjMqti053RnVwJsfDpyujjNe
	 gMygTFu0CFxVJ+y5T3ifDm4SjakK7855/HucPh6RVTFUK/HV4MwN6ytJY2IjrIW+ch
	 tAdOzOaySr1fVLyl7EX+A75nH2NnC6lzRZtdt5fQlXo/8cTRaF6vWEf9GtSsnOIJAf
	 OSMHRpP11KVUkvnZeWvvjSBAJScf6QjP5wznmzffeFB4xPsGlTk+K7GaARW/ErZ3yA
	 K70b+AoBSVhl66XPMF+d7eyunHp6+jy4i+AC6u8k/rm3Q/xFnYUgWaRdP6XI8YM9+i
	 X+X81eNwMJeNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F3CE7A8E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311199359.8793.1629445958972470741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ece9930e140543abeb5222e91c1ff2ada30029e6e292eb44aa216624ee6962
Date: Fri, 14 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763111993
