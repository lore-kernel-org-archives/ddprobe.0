Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B97C1C01
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717912043; cv=none; b=n+9WDUNz0GZSO8jry4PyTEkNEQpYaeATw/n8iSWD59qz+x3POdBa3G+hnv5Dvtyt/my6cFxv6HqHNR4OI78HjhTicHk+NyhtMDWEMbcX0V2YlmtxAfFxwW8TNJfb+Ql+whz4IzF14+jIipEg1p6SkiLX38jfneg2CkqZXqAXMF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717912043; c=relaxed/simple;
	bh=61v0RX5pazLZ0uYpzDczVWsXXNC2DvLT+IpKd3HNezA=;
	h=To:Subject:From:Message-Id:Date; b=kaW1H/h79xoVZv/krjGCgdR1OZ0mh3WzHfOkzAJwJsaNWtiSqiwcxa0VZNZdLaOmdRjoYmEYeG+yETKNrYGO0z1KjWiShZr7NUw9W8FtFm1TaQElf/D0na84gWbrsGpusg5wuBYpIP5RsnTGb1O6XG6OXH2+7LCwt/EV/OZz9aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyxDah0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyxDah0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CF2C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717912042;
	bh=61v0RX5pazLZ0uYpzDczVWsXXNC2DvLT+IpKd3HNezA=;
	h=To:Subject:From:Date:From;
	b=PyxDah0BlwTlSlxrtGNbunkW8VzffVQaGU1lxRogTB2B7EnpSAA6KVKbzYXHw/0t1
	 Rtm1OOahwQFJlGBYDTK3lIscTjqWtwb3sHYgxoji1eE4A0Fh2Uqa7kAedGDDtGKL6g
	 i928DUBAJ7OURloz6Rbnb35ZBcjeN4DZWB6M7sZBJAF5phglrE8Z/drByHq7bDta+j
	 LpKwKHvOIJfuD1LTkVhFyDF9sFWjzwjgIhj0/NyNlCN9Sf3yrJL7Pw7QgpDcdbEDhL
	 GJFNbs2Cby8Vv+xYdVxGCrqAJw7FmLlJakwnB78S+yMAIMS2dc3+fYTDO0s/KWd8KY
	 H9hrsCfV/MrSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF173C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791204275.7135.12062325853261942338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122faaa9530d00165d1626bb69b150afb54d3109eb6bedf88f1f267f40830168
Date: Sun, 09 Jun 2024 05:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717912042
