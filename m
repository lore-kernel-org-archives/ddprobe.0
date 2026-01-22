Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CAA318EF7
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769102034; cv=none; b=dVADNcQcQJCifu1/y46ZtMPnHLKZJr71HsqV/PIQZuNy1lsCbzptm47oE0KgWdigYpxDR9ukZuTm43P4sX3N+bRXsKN2kxYV4MN+A03IwlXfUOea4tFUfYsF4OQ2Ypq/+VdW4H8wVIw+7GkoVwU3XImcIdpVSStBxX+3hjV9/Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769102034; c=relaxed/simple;
	bh=Vvjg9bt8xmtNxUaDrepPWi8W0Jur1r5XZ0XIdxqlzJg=;
	h=To:Subject:From:Message-Id:Date; b=NGSFouAOv2xVJ47ZmC1LOGdhrkhufMfbmMjZ0mOMUp4rRIOGV3rjmJS+0Y9ZVR6YX/UJLYqYLVc+8LnftRNLhqhGW9Uw9tzjmXdrXr3FZrUzlS17jAEcXDNR/DXQ6nwxgM3JYlByGlrZLf37pyOQ/6xcfEyo/8/hPqHm6wisiXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b59rOMON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b59rOMON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF70C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769102033;
	bh=Vvjg9bt8xmtNxUaDrepPWi8W0Jur1r5XZ0XIdxqlzJg=;
	h=To:Subject:From:Date:From;
	b=b59rOMONUKAMU3i7udXIRhb4nFSlDklO8b0nyUHWAjLuJAq4pyuNfndb59UY/CPlY
	 SEi4hiU+0EGZS1uPl+bple9VrwCmg7IOzFz0X6ZJF/7kpX8GT8dMItbR5+pJgq5FPx
	 XcL853QE/Ku20XEh2mlJObDHyYlmDL3rRQcV69GCZI96oLVmgO9t6JH56quTFB9jgk
	 lLrM2hPN/0wPHp+3TIRLOHsLfB+NXkjWp+N2DMyo86LzZ+qd0Wp78uAV8y5S0Vrb+W
	 h2MCjYd++CVbFnt97yzgabaKPsRYI6/RviwruzvdlU1d2kd3l/K8kK4SD2xz+o15gO
	 Rouqbwar6vdig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFCDD3EE96
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910203358.26394.9294506836832514312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed122098dda1858e2b01872511c10dd41f342d503d16211e41feb66dee2fa18d
Date: Thu, 22 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769102033
