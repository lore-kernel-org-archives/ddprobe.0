Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019413081D6
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774724094; cv=none; b=kEgT7LhC0koWnMBXp/9v15P08ybR9Ts57mt1E8Y+GaZPt4wDQcuUU1L80/xorQ+w1pNYaXdMc9neHCb3aepXltIOH3Qvjp33CnVIfmFg8P+mPFTz115aJmkd5lQfPlHALD34OI04jRWYJyyQnLRXTrMUv2DCRx1ndxijECzSGko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774724094; c=relaxed/simple;
	bh=FZjoXczyQtnTHfaOU/p+M9Wx4qD8xjeJG0oY9qE0Yas=;
	h=To:Subject:From:Message-Id:Date; b=ZD0E1XPG8xJd0H+TWcHNZu7UPNf7cAm1BdI5m85bxIU8HR+jAeKCafaM2hBvKHt8fyNrdgY6h+AkDC+uvybmXzfA37vCY396gzrqasCJxatk+QhFbpmPdvaQXhavF3riDurNAiaA8U2eOgqmdIdmDjR0PZ0v7HdBQ83RHNuA7OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZ9S2oi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZ9S2oi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C38C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774724093;
	bh=FZjoXczyQtnTHfaOU/p+M9Wx4qD8xjeJG0oY9qE0Yas=;
	h=To:Subject:From:Date:From;
	b=EZ9S2oi9iCB9ck8xIFaF1Xp1Yc/9E6JNXDLhy/zvyZShUuOhmIXGI0On4caEpWpJ4
	 pt3sk9ubgY1Cbn0e46ZQiWQDtig1UcuCYzvqDMGideMjAH/iGywESCUiuA1xHjkqqL
	 RLkEFT31GgfGrZbJnFFNGD8dMIaamvUgA4Qhfkz7Ob85+AT5Hmx1E+IpxkxMrHqeUn
	 L8wF4fFCIEh0PmOh8AsUm6tmw3dVjhbR4wa/rE+23vOJNZoLlsLwSSPm2LM3uIEaTG
	 0xtmeF4jt8cM6H/yPzz4IMg5v0I8sWpRmvig9feUth8+57xZjNaHsUxQWs7tuLBxs8
	 xN61io263x7ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C6710F3DEE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472409358.7176.17964182249201925488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f86fe58914fa1b081e2a63f5cb14a2d40cb946d452de15d4f1c56ec25e8e22b
Date: Sat, 28 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774724093
