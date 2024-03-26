Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F681CD39
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711471697; cv=none; b=c00R/rvryg4Cww5y5rlZnSQf3ZnlO41U+PiJnHSdPVEW1Aou9EPm7NQaipqaJbHu5sMfgTH7ZAI+Co+dxKqijG+awGOwyu6PaqIA/72+KLtJZSbFeqeTzu8wvABWU+VN5XyLQZHYbTGkrcAJPWEUgifrUA1JXepwwpATN4+DZTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711471697; c=relaxed/simple;
	bh=i3tRYWQfXBjrY8P0S61AcjwPd+sbQD88TiAUAJUVKeU=;
	h=To:Subject:From:Message-Id:Date; b=MMbTtWQQlOv8oFQSThaKp8yAYJlmRcJvyphHTiS/IYnqE43kPFWKLQ9oOcCTIfzdr0gSNLMm/G/EfCiN+stE9PvEH+Otku+Xr+bR5ECtANeIVOec9Au0cy37cEYdLWibP0PhSrrdsYq5anf9QrwI/5Zx8HZ/lxqu9Nu3iDGMsf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/GHa6fV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/GHa6fV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C8AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711471696;
	bh=i3tRYWQfXBjrY8P0S61AcjwPd+sbQD88TiAUAJUVKeU=;
	h=To:Subject:From:Date:From;
	b=Q/GHa6fVohH110HCVd+sM4KfGCj2xs5GgRPQcLdTYcZEl6fVZtbMOweAgjNzbT5xL
	 mjQkaOP3BO39fEMmgnUmV5jLUOOG5HCGXm/+fBWKdseRjwhoaYfB0xzoW7GhEAo/mN
	 O0ziBYDovyWOmcZwRsrWKR7PlX9hGBd2XBmUT9a9p//h3M3bJAsDkHWdkzVjPllwbZ
	 BnZ0DFpdIPXemG+9W/7Wt91+ydiAd/FBWa9rHXoarYAv/IGCjBRhAf4nPHySP7VWTQ
	 k1n6bv2hWkGWYbUxOcJwupJj4+iIEI4WProiiLlXPqFpZxV5BvhGK28/uR6LeTnoJ9
	 nHQPfv/AtF3mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70FF6CD1283
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171147169645.20874.7638607031007134965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511f56d96332e2147673c4000d90a964accfd13a31e5e3aa63c38527a4ed6e13
Date: Tue, 26 Mar 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711471696
