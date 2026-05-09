Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01F9246BC0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778352454; cv=none; b=glS0A9lIV5pEwAzjmc6ra+EakAST4IFH7sqwpWLBWmTDK6zSJPkVxmco3N8zYTeuZizXEOcH7avxAfBYQCU4NuLhgkYsNo98S/CFXDmS4yORbxws0r4YpHGjIvJbDjpbHrCTDhAgCorM+hOYQ0A1dsOl8+Ke3WjzgWhV5hsTTHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778352454; c=relaxed/simple;
	bh=Px68kR//0VTnBlyZL0iOfI9vX6lw+dFsUUW2eUYiH7M=;
	h=To:Subject:From:Message-Id:Date; b=ITTa1tF9a6jCqhJvE/1h81z8AKOcgeo7orgIibscjbr1PSF2XQhuCgZbsr2Yzal/1xDcMB6elN9dzpfYLcj+NVFAtVpWffZtBEL8dQySiy64Usf8G804Ra/BHjszKbBjHqrjXU1W7a36XXrhjm8XNpBFmHLeBG2JRGDKiSf0k+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBd6Fsa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBd6Fsa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 38E0DC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778352454;
	bh=Px68kR//0VTnBlyZL0iOfI9vX6lw+dFsUUW2eUYiH7M=;
	h=To:Subject:From:Date:From;
	b=pBd6Fsa34UoSQx+hE9+FJUlGssNf1K7ukdLzcQBqCa2KuStwg+GHJHoT+jYsgf1hN
	 ZnDDLRbSom8mJP/JVKQC2I61I1sQs8lOpaXGIcZeWTEANcShxvpTPDnRlak11tRb4+
	 rgqT4is8RVq7cjkBORRy+Ofob7BsV5xIF4IAXuVDkFGHN0/pdogewokO+qX6BT9aNl
	 iDeGYut2MrKMNEflEArKDys1FJDKmoAuBz2XC870NgMtn9G0MIephSJBpqljYUgtLW
	 sHKOO+KbgbSnGuzHj71LXomi4g2TTQkV3R9Xfd80a5YnBpoCTiYSzwlMf+xSFm/jQ2
	 GUii2KmdGtN1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04749CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835245391.24685.4761292768639231049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e057a668b0cd430f3c8116805954891f646240fccff82cf1ef3fda572dba75
Date: Sat, 09 May 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778352453
