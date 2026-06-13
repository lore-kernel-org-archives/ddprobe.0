Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4331E396B84
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781369794; cv=none; b=VaSmEwGlHf4SRIoNgJWWlRFqOt/g/wFz0xxWxg8JHqRcgTm0QCUoJXkZhSlGuVI2KRTIUXIOD/4ewehiWiTcVGY1rdfmr7mQHrlDwnxTOat92ew+Qz30nmQ3yuiTQVrxxtx0DniOKQ2eALMRwqMBaqyku59JjgVsE/6F99WS02k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781369794; c=relaxed/simple;
	bh=0ZWbeDBgDohiLmPeIpByn+ILtaNIrZ1MGjbEbqSWr3I=;
	h=To:Subject:From:Message-Id:Date; b=d2OmRdfCVdX6A/pxDUHdF2M4vuc19OdkI9IkKldNkrYLJXgRIK1qaA1WJQte2FJUR5NBbuWEZAAuGGbLMf4k1pnKrGWs8ps4ZR7M/BNpSisc+9Xipn1l5Z32xAOs2A2rUgHa8cfqL2icLadzJRh/5hTJITzd4Rk1bG0Q30U+mX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXGQrmxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXGQrmxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72F3C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781369793;
	bh=0ZWbeDBgDohiLmPeIpByn+ILtaNIrZ1MGjbEbqSWr3I=;
	h=To:Subject:From:Date:From;
	b=LXGQrmxDocd28nCehpgKuJCJoesUdrfcTOqX8nJEYp1YTxnYvRWew0GEkMd4ME9Tq
	 AtmkWZ7Tm+uuUrnqnCdSGMszJQKTxBAnp9NYpaxNgQiDN1tmp/JDp7fBerldB9sZNe
	 cSLYGD13R7Xoc8stIGOMYxX7pPUJid75YQeaT/8LR+8lJUxNmz4GsL+KUjGcD0IE5u
	 Z/RwNbDccB+nBbdva1v4upFzqgkJxDmnjCqW+xNXQLMGWWTUjFlk7cdCzJS5B5z6Xk
	 9YcyT/3kepVpLvp/iIh6TQ/Bps3Hv8qEe056bxu7chfGnvDXi641bkgVPymPxvCOZj
	 L0hOrb2Gntk0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B6CCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136979373.19753.9348970122687586927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add4b576cafc280e87f5f0d3e31fb30877d9295cc9d21bb6f002612a6b026245
Date: Sat, 13 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781369793
