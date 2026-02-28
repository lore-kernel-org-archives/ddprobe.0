Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147FE1CEACB
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772288694; cv=none; b=lUwcUjiEW65gS7kSmeL308ncG8/S0lEGJGIt+30y6tzF5f+pNRizNDhHUOeAAyzVDzNjVk/rwkGaVk0ysw1Q0NOkV26Yu33JwvmPJgpRFVytIf5cTy16QMtM1XfuYjxRK95eDX/ZstmCyLKm7u4Pt1ygiV2i6YL72JdQ9tuzxJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772288694; c=relaxed/simple;
	bh=546CtdQUjDFkN6adNOeRYJrQh4M+pN8R+QWV3moaAeQ=;
	h=To:Subject:From:Message-Id:Date; b=lKTl/BIkit15Pl4WculT3FjTrjzaJTewOIPU7cZr/SczHNupcDB4bEoppqeiajYJL89PWVv/mlefzAXNlClWdE7IrZN1GgPyAgwSEfNETEx29DAk5c0b/W3PKUKhBmoKmjzYVtmfg2SRMhEm+EUddWvXwkrGWPXB31yM1lgd/cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcjvX34U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcjvX34U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6CC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772288693;
	bh=546CtdQUjDFkN6adNOeRYJrQh4M+pN8R+QWV3moaAeQ=;
	h=To:Subject:From:Date:From;
	b=HcjvX34UiU3BEdcx/qtDkbwDIO6I2sghosJzR3I/1/dPMgBTj45GG3l6mYGC3wWla
	 KqrR/afOMIAK5yARDCFkFAyXxjTZwhzX+wPP/XaSRa/0e72TupgBIM+R1t2HNOv2Uk
	 JVRpLGL+jLir6jE7MGYz6VlkgBhqgy8Tp9jdBUdDdjZCGJ/zdmOcB7e3zGmQNYfACW
	 JkZ5INA0R5ZPev9YCbzrP2T1vpqSua1NYaZNcOdXxUFwWh5YPrqDsHVuRRrL6K0Hze
	 c0JT3/bglEna2pY8EXEt+Ie1hVekOQi1wAZRzF04NgSEQaP+GRo4cqpK/Ar7Of6Cef
	 Im9i37j5CxXDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25CFEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228869357.9677.6952189527375420651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c303ae6a34ec8a54b5c958f67f17eb3f31c185b5879dfee3d269fa6eebe67f
Date: Sat, 28 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772288693
