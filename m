Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F7D28314E
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750840794; cv=none; b=KdH8GHXaYju2YbIZNwLjsArqEGi7UDPH5hkejDAWU2jHfr12WeDGkK3V5yXKpxS6ZGxkulNop4eX7eBGEgpe0/Tk7PMWllJeo4sFzwol3+rfVzA8ZYPikQfRLFR3mMFEiMMRRXVByT5UTp09jqJRH25rBVbrtnFaMbR0c+onBOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750840794; c=relaxed/simple;
	bh=N7nnUnb34x1F8g0djTEBpF1uA6Hndb5JdppKBNm5zio=;
	h=To:Subject:From:Message-Id:Date; b=t0F6Diorg46kaRgBtuVsOMRhQmbpRn63jY4JWsU3N7tqb4e4nS4ICmiiTaC+JzZe0ofu6f41idN/sVeR4fnY0BOVSdztk3jtx0QkOoLKy+aBmPx4dmizfFO0Mq5TTIxaE+dpTNLxAhN9DKeKkzBCKt3Sw6s4DIMzTWaIFLVGz5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxv9ZP3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxv9ZP3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE9CC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750840793;
	bh=N7nnUnb34x1F8g0djTEBpF1uA6Hndb5JdppKBNm5zio=;
	h=To:Subject:From:Date:From;
	b=uxv9ZP3De3OL4zM+VrPoJvFkEv7iujbAZvzngyL5+2gSWvofP86CvrSImi3wU5p4Q
	 HUyPyWT0IVq7L1j0jk1ai9u6Wck7pOSORsIxJvjn9Veck0zJUg1C9Yxo76Cw7ZbT7M
	 h9viZuvNKFoZhHRF4UchU/RX624feHbCP655H5Q8kB5uV0BG0zODlAMjVDChe8MMOl
	 1dC+VL15Gd1QAOZ41iKKSt3rU3krhsL0zrxh7BZr9Q13f/5R4BeVvKDCvw496/bux3
	 wp0qUD0lIrvto87iGGrxYhmvpzElI6fqQHioAsGbX3+JkOtjPqLXNhQnNjo+S9mlVq
	 N6b7LzR3A2Mfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3BFC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084079357.3426.14413174620538755102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9253fb74ecc263955f84ac544128cae48319bcb136a2ac7d60704800bb03aeb2
Date: Wed, 25 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750840793
