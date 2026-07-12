Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4120E369207
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783834714; cv=none; b=m9AB2gPHbXHGZ7CFiExrm5nF9o+adu0O8zudokHZMDQgtjV51E4QLiZsOgPiil/k6eGDEdj3ADUoRg7uzCeTc4IVZ2l4zBGee+ltzb9VF1cCh4dc0EL86pt6YYTcKoiRrOEwmjywuGEbtlhJN5XDlD1MxzdhA1OSNYJNd6Sw88Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783834714; c=relaxed/simple;
	bh=npTGL5FqBhiRCto6g0xyLv4+GjMb6wgZwYdL+hMvrKc=;
	h=To:Subject:From:Message-Id:Date; b=JTkGZELUzUe2UenE2jo+SO/Jt4M0Lrw5AMkWJy/RP9xCxoIXWxsfO5ErPIZnbFyeTEEdgSuXRHQgqZ+yIsesR0q/qmh5RsFkxALSSsw41MmHsOlCijQam7V5rN6d2xFwdnMcwISlaIhAVJC0EUH06u8TKb8r7z/xZPKNmRlP5Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxv1ZvcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxv1ZvcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96A0C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783834713;
	bh=npTGL5FqBhiRCto6g0xyLv4+GjMb6wgZwYdL+hMvrKc=;
	h=To:Subject:From:Date:From;
	b=dxv1ZvcNWxh0IgPzyVFDTAuPGbplq9CyGWIrtGuReZCMf3Rzk5rK5VX5fK8aWDZyK
	 ZBDMkAfls8t/2uiw4bJE0Hx9TUmahMrhi7mTC9LwCWlKCazNUsiP4N0SbuKpQAHc6M
	 4u1j2Do2/mdtB7BWydk9ySew1XAdxsq1KKimxkn609cUnrISWaw14fZiS2vEjGHxa6
	 GtiZIp4Ca/yYDoitV3tnNaNAhYnhHCSKSLJ+U/gHnUQWSXQVwrEr61+5+b1oe9hIF+
	 5mJTO3/a5U/MWUAfVkX6snI6LVCOHyoTxSIzoF9cMPKUbNOTCqn6gcQfgTPkDzZh9v
	 dH/sEHZ1X//zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F40C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383471368.20572.17223813715560190285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb5bef2164fd258c08f8645654036a9dde45dd46413c43898b5b525c4f822325
Date: Sun, 12 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783834713
