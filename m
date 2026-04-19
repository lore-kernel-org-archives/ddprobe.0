Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138431A6831
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776626854; cv=none; b=jvbNq/0eHHsMiVHhiC49GcdAXO0Kl7bhZ+8Sd5Mdgk8y27tUHGdfAs3pDVCofRM4B5nTkNZsbxjzibwGICbNjc3rgO4plx8dYOyQn2JH+zeHN+xKYqkHzaiXAFzl6R2U8jQiT7whPaEAXYs9AIqXUXve2O/NyLWrkVlDFF7g2iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776626854; c=relaxed/simple;
	bh=sDYpYJMJvu/cXaWTKqQu9pNXuQJyuaFjLZTSAGBaG/U=;
	h=To:Subject:From:Message-Id:Date; b=Yn123OxjmdwoCbG5aGHNE3V5LFS5o+9DeBoBvfatAvDyg+zQFC+QOGQEq2XRMxpJWS+EDV74mrYJWjc+L1gPtGzk4OsdTSKZoCAaagOwTYWmS0FX9vSIdnmX2Ci+hURTkzTgvyOn5NiRiWUoZvOMYaM/6EIuLkNMs0Pg2IrIcSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFm1ghx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFm1ghx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCF5C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776626853;
	bh=sDYpYJMJvu/cXaWTKqQu9pNXuQJyuaFjLZTSAGBaG/U=;
	h=To:Subject:From:Date:From;
	b=qFm1ghx7n+yYkOmjQCRh5BEQ2WDbfKUneoaNC6Kw2VZCSXR1UfUdZyAPnqxFCPO/L
	 4dGKBt7ZBs943sU9P2a+qxDobJEjeOAahRCOLDHpsfzlFB4EoL0PDX1bVuH3pKp2Jv
	 +OKMcQSIfga28sEkaCLG7VUZT9BFjL+5/aTzSg74kLLVs81eQ+4YYZZZvTm1CEVERe
	 huEn/+WTzzg64Ww0+LGu7zoDMDu10mjChHnq3ZYfJbczFqhCYPQK2sMSc1uzXeMQ/S
	 mreYfESZdWDLKx6F0tfBuXffxwQOS5LXz9IsX6rx2ABcjl3UIhHwASrkum0L0GXdfx
	 u1CEaGyL+XhpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9988EA7197
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662685368.23043.3117745535610131395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e15d53c7e3353567c7e358b292ba4d703e0e1d588819a1d17b7cf8632bd17a
Date: Sun, 19 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776626853
