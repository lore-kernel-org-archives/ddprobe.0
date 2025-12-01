Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BEE3C17
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764554574; cv=none; b=LkY4dO7YSVGDjrRQfwEeLWnSJYQcY0Vanbr9Xmlt1N/McgiUfW3AzhNctoRsijwJMj6ppFt3dD5IwOIUQGotxuxvxvYCSRGKC1gh93KReU1+M0N9oJa5HAqY8N9WMpCXn2RDuV9Y7PGrOe3BIgElmBxnKH7QVRbv+JJLxwR77TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764554574; c=relaxed/simple;
	bh=I5AQ8w/ElDO/tqzfGuSvwghIG1xABefPvlEsXiYei68=;
	h=To:Subject:From:Message-Id:Date; b=vDral8k49oSHIyAJtzHFK6c1UxxJjtWJ56MsDSsb81FNXmiD5aX8vz1ql006VqnIqRQRduIeWsj/Tl4C72NL/2oIPMO0AkI01e2TeR/fgQ5ZLbKWe94gWTnLEYxUvx+yKubUBQSC+K9TIUH17l84jbMQMYHY5z0xHGMUeOLhHTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6B58XoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6B58XoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03CAC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764554573;
	bh=I5AQ8w/ElDO/tqzfGuSvwghIG1xABefPvlEsXiYei68=;
	h=To:Subject:From:Date:From;
	b=H6B58XoZS8nE2Q95/5ZbVANIvKSHCBCYEQj23ygQMyTtTGPtD20/paKm91oHFM9GN
	 XbWSFjXDR8ozLXtadOnad1/uVvKWnOjmd1xaCqwvLVwaZq39q8WHvuyfkDOSCOkGI5
	 9+nvcA9WbzMzEHETcRgaw/qabLSXzyYrVYbDNRXgAKcllmG2QcOIiZos/ght/F9qUe
	 LUwQlIDiWqv5sq4nX4k3pjq+jOjyP9Xov02kep3whNlQR40wqfcS/r5qATsPet77hC
	 vILJpAnn3LOPcDo88Jv3Vy6fxdMWOQ2HpC3Z4WQSiAF4Pj5R5yleA1Kq7PfZFJTZW7
	 Lv6TxHm+6TYQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9EED111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455457359.32499.15683643504704033236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a46b4487916b39aee46022352afcd9e9843262d7375d218e22799181126015
Date: Mon, 01 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764554573
