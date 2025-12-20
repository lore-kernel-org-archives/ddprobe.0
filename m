Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BD922A4CC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766237034; cv=none; b=Eu6Zx9kNYdHZ7uMJYGX29mWWA6sQ6x4YvjYl3RWN7jiJk+dk6j1RaqMJasyjYtjdAYWlUjYfrGgL5dDPpiM5CdISUZlhAzyoiAeG0wk5Mj2Qpun7yyCCEyQ8MpmP2FLhe1s+UBeIfTU/0Fu6lTnMFNjFera6deWnypyl/8FoGgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766237034; c=relaxed/simple;
	bh=6UHqP6QysBb5Y9JVF3HYAbGIsHs3acaiSQvVZuBTtaA=;
	h=To:Subject:From:Message-Id:Date; b=RZFMuod+NSnFewf9tPJmLBHGHhHA8kpu2wTpSeZtOE3/e4Ae1/xuLuPZfhnqVAo1Ojf+fvhurgTXYwb8gGHDbKl4cD0ZGaiuUOdzJW3P8kxp3QW3XvmgNzDowLDKUm0mnTkWcH9V2InT3saa7kokfMitSUrL+9sbPrfuGbrwg3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr4UXkw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr4UXkw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76BAC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766237033;
	bh=6UHqP6QysBb5Y9JVF3HYAbGIsHs3acaiSQvVZuBTtaA=;
	h=To:Subject:From:Date:From;
	b=rr4UXkw2yBbatEjGQI6pb4ABMxDNGWXXPQz1A3osVH69T7oXtRJIdZi0cPYyqp9Lz
	 zgYCr+zT2emIMShuJR/dUfOV4LIqgKwF4s5AeDnkH5i+dWDAN5cLuF0uVjTBI1kGeX
	 wT4wabayyNR7l0e8FiqFYBdStHUGgusrtQkxR3+cqLy1G2RDX8pnoq1utw5GuNAfMo
	 V8tJ4HdlS5K3LrkFUfuEZWyqlFrK3iNJNhzJb8mZG8EPdF4EkMvkxSb6EMfN9m5Xa0
	 vlCT8mBT+d8/KxdZltUcDxLv2g3QPdrPvgjol+7J31x76p0/kUGVRqUXpYGdqUROY1
	 ZaS9nyAvcwmfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC5E668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623703357.6018.7062920857684088443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98a35725485cde405f8b8eb1169016821e8c5a5981caf1b7563462601246460
Date: Sat, 20 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766237033
