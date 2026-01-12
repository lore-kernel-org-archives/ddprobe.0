Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC9E2E7F3A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768250034; cv=none; b=YrfCWkJ2rm/9wWCCvvrWlx6/aT3TEZMBL/gLRuOBwwZIBsRdUjm1th3ZyDPqwBNqFytY4M5SDlFMwDOwa9i6xz8qdrPkXPnK3d9dS9glHv8MiS4ndmeUJJffRulCdQR8361Um2I98Qf86DRXJsFBx16N+G1KkBylMwjK4Af8zkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768250034; c=relaxed/simple;
	bh=+PLBoJbZouZ84/6cj+XchmSdriZHuPV6J9nKKAPsUrA=;
	h=To:Subject:From:Message-Id:Date; b=YU+RgRtjWKlASm4MZQ8RSq8o5d2+eVsLB1TWOdA5xRgGpBSFCr4capkrfuGx3kWBpWXEWdZNMerGFrxQLItxC8jsCgNDMEPqGd7uXVHqeQGg0wNB1hKksxMxa2fhUaV6f0kNOrQotXU+OCVT+u6/kTNAgATBpWWzCpbyxbBMtHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL1xWA0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL1xWA0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A282CC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768250033;
	bh=+PLBoJbZouZ84/6cj+XchmSdriZHuPV6J9nKKAPsUrA=;
	h=To:Subject:From:Date:From;
	b=eL1xWA0hXf+OjD87FL+4kLTdlzdRfR4uKYGknVG3e3fC06Mf2alIBYKQ/HEuBNwhw
	 id+J6ERWu3Jd4ggyACYQVewT3Hf3QzE8nwdKvwGwG+XC7I4TruuqaoaCoHXdVF5K4v
	 hvmTfqUmfo9BpYvRWcph6G5w9pQtmRH7nRRHY3tcFrgcj2jRNUmGww6vwRGRBO17hs
	 IqcRQBB2jgm38TUCD7nmVzdPP5BSnMxy4n0/Gfip3/jeOiqY8Ak9JtwD/eroWIjoQX
	 zn2+moI6bC58SdB/lwvDUBFZfYDII+EPehY3LiLO1bD6L89TinAhDb4s4jSw89zVvY
	 9aJW1objZJiiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C8CF45CD
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825003358.24622.77742444626284504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35dacb618102b3d13a530e6cc1310cb27351490a2f6ac7acb12635b862ebd60
Date: Mon, 12 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768250033
