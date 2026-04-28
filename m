Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1727038AC93
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777420054; cv=none; b=G0cSj/+Qo2cGp2JWYqGh6U9tg9xw1Hhkcjw5Yn8aYsl+X6Totvh2s172EZic+08Ijz2sRLzhFzZPrXpdqDKjEQ017KuFaheU1JiO0uthbZ4n0BwhMNJGotgr0+Ag1oPm26FfjkP96NT40b/1hZ48utQ9lBDSCdXqP2lwvEfoFPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777420054; c=relaxed/simple;
	bh=nEAkTgDCtdGmceVgPd3KCCV+Gbs7F+XXm0fUodl1vi8=;
	h=To:Subject:From:Message-Id:Date; b=LGQ7ds7Z3lk7WdENCG912azG/vOON+7eRC2DmrLxCKz3CFLULO0KiO6IzGnZxR2wfv3WGfahnH+mfRfFbxiDFyISha7QiTGXHFPidHUgJmRYC3Mo/hjaqUk46rHu/zSrlgXVSOHoblAE1NcpFD1KX4Ne7gl/5550muz+2qe61ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+3GIqXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+3GIqXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB03C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777420053;
	bh=nEAkTgDCtdGmceVgPd3KCCV+Gbs7F+XXm0fUodl1vi8=;
	h=To:Subject:From:Date:From;
	b=J+3GIqXCAIsXekjtyNPh19tCsvoesCZbS4m4x4d0jaOaLxOsqdxHtOLbqT8jLgtOR
	 AL7VAXpgJOl6HUH6o6Cy3V4c1fvFXSy0n6hTyVO1X52BITkkA+WIxVzWrD9xIGvEfC
	 Vy9aBMRlDF0+jStw5cFAU7nWl8IE2ydIabGNGBkkGyqOLgVCWS4FROgkIBCuMb5Tmu
	 nqXYjC9Fn08HZPfzxKx/pRyk8cP/GUDKh+/fQDPuhSYZfJmtY7hLOuctqpVZUgVk0X
	 HD0tHneV3nokfs4WTxWsKarHjHVcX0QlzT9t3xh7lnM7UUquaUFBFn5kPrUlEYsprw
	 8CY5JB11o+XNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9620FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742005368.22274.1020635280385590166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806d65b5b443fdaf08ea9f2ae53b4f32f005f430a7137cb17cccfcf004afaf94
Date: Tue, 28 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777420053
