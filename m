Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A1C211706
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762025994; cv=none; b=ZIu2XTZwZm3eEsFUCixG0drMuleAN6YlyTc4uxDpVszK1uRxg9KKPzUjB1Opju00F/besynx6dYvVr7QCyU/A2Jyqwu+idL1AmMe0Oh3a66VZeWrUOas2Ev8bBnSzm8/iBFB0uUM3tInasG2tWtFetZM7TOrsD52yckLjEZDrrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762025994; c=relaxed/simple;
	bh=z2/OU1LJCFvDMc+QV2CI35THdNpNWU0VmCHj3RHDhDo=;
	h=To:Subject:From:Message-Id:Date; b=N/Lu2IC+aXm0r850floII2y7hXB9HTCuAf/0Y/IgDxDo0aw47Qh4GNmsqHNhjgb9oKGYJVQiD7bp1WYFQOnMFnwPotIgKUJJf/KvOBqg0o2VqJat4k2Ty2+0HkcjO4mLZgGRvNuJ7Osf+z5JoymxPjXjsAl+gD0mCQ/nzVjG/Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmO6lRAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmO6lRAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4589C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762025993;
	bh=z2/OU1LJCFvDMc+QV2CI35THdNpNWU0VmCHj3RHDhDo=;
	h=To:Subject:From:Date:From;
	b=MmO6lRAxjoTdkvt+CNem5o5q29R3q01LAbytKUFU5Hmf805pWhBhqTug80K4qOR0h
	 CVChN/S4oB/75Lt9Nnd6dkoJ/dkp1lUqI72cyxcSAq6mcPAM9SjiMalotlb1HYrWHe
	 FfxUoy/cb/+B9n4keTCAX8QtqddX8VLb6eqmzwQj8IO+uyNh8RbcZ6/fg6E3z8roMi
	 gLERtyOCry0eea2JJfMDoKdxbjXTL191Ne/bM4QHgujZ/vg1iCj4kkhB8zVQaZCJ7K
	 uh9xNaULMo+LjdLl+auwiCvy9CRrOoKDlzphsIvnDWJqzL8kG5pmMfgr9j1K5JzrIV
	 iqFCk7Tz08AqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B55CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202599358.5222.608239472760026116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eae62f88288b474929c7061378e090b1516d5c8449bab9d7854725dc48f3216
Date: Sat, 01 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762025993
