Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C764296BCD
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767006234; cv=none; b=pUxpkBq0J3IKFRPBacKDAdoht54hCwIJSO4XJrL1SD1zqeNewhjFKjVuB4wzgzNLeAF1yNi5+tn8+XRfzkho4oP1+y02mG3ynMp3xKfNa/DwN+WzHYzm38Lmg/0xOOQwZlnPYGZ/HV1xaErielMWTzxFIXPazrmnWMtmyO4I+Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767006234; c=relaxed/simple;
	bh=OqQ0+zMq0I1xVBwZ1Myt4PERpoYmLZOakl65t3WeyO4=;
	h=To:Subject:From:Message-Id:Date; b=f6JtbpNChKS5RwwJXecRFFXA78UKXrQfhRUD2YKjg9nXb0YJkVNO9+JT931pn7rZLWmZixhWsU1GkLl4lA0wGuYD1mU9wAbt0ovaN1LsNsJgzhwCfldqEhIIM2nuvM/wDfomPErsDpqyLU6Yj01lBHq4aBiK6fnFuKfgK4Jd9cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+v2zU3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+v2zU3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF51C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767006233;
	bh=OqQ0+zMq0I1xVBwZ1Myt4PERpoYmLZOakl65t3WeyO4=;
	h=To:Subject:From:Date:From;
	b=I+v2zU3SiWKLWNu2hmfCgIS0Q3gkayE1SoDM2N5yD3zxbOAOtmdg+ybBuCkYaFUkx
	 EIyJJqR2RqDbo/jEK9Hft9N5LsWx4GUBlIBlSK2hYl41EyBHSjIyuT35z6ZQfd9Zn1
	 R8NSn0QgA5Md6Z4I2KrFuR66yKYjQwAylJLM3IY/UUDjXnuUAw7khumDb1IgFhU/Z6
	 aPgMxuUvugjYa3Bsq2ZRnEaJO7GxI3BCJKS87k9bjtJ45E7byhvp33yGQWcSq5fFp6
	 vveKrbW2qP+1EgEMccdbc96hr11+AR/NJNQ9ChAFdkJPvul13M9PUwQ2v1BTZkSZFh
	 b0xLIk53ZsfMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9910DE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700623361.28886.8366420149173606419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72816230930f561ad79960c85173b70cc607efa2fb1f99fa9587d938ca11dc95
Date: Mon, 29 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767006233
