Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423F92459DC
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781317594; cv=none; b=GgRF10N91OerIAjGWjCKSZ6ARUy0cFtZszhAYGCRnYX/zBRKifC0ghwRHzbplZTsaY6gMkARByRfT2SvDWLtrZ6cscLQV/8FvAdZbXYMV40TjzITia6woIuxehYG+PY/a9jvThcwuoJSuMVCUjvlBDdEqoxBdRwjkA24i+gCcx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781317594; c=relaxed/simple;
	bh=X04huYQYUGqy/+Y38tsoEQiOrHrHU/em3nS9rPF4qvs=;
	h=To:Subject:From:Message-Id:Date; b=tSrM27uMmvGLwAkbCXnl3ETjz+qWSmFIo7eA9pVCqPXzNjEuowCsyNBjXRAoaRy7qE9xny2muoUVXMbhixDYB+CjyuFPPpIgqurxCuJw+M0rIDOprR+sVr0Vw7DoC2x4Qbo4owBvtKrV5uQR5bmgrQL5rtnJLiaIb3sBDQMyC4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiB5wcS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiB5wcS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2411C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781317593;
	bh=X04huYQYUGqy/+Y38tsoEQiOrHrHU/em3nS9rPF4qvs=;
	h=To:Subject:From:Date:From;
	b=kiB5wcS9A67vWjShFmAdXtXJxOPxTj/X1WwJd3Q+ivYRTaST3Jl7LSWk0jpaMtCUm
	 TVOgmCV7zDRrDj8G43YKf2tjXn+K9o9Cnv5UIfs6P9F43SivlhGhopdiGkXbozNMpl
	 O+M2gdqdocoYRolnaZmCWtfEcALLqHpvZVo6E6EaHk+6jQxvPqz1EvYtjbxUn0zIrB
	 yiTmVsOJHeBDkBRYDXjsMOd7S9kCYs+3vTRut6+NolT9OloHDUUca7/8KVs3I6E4u5
	 ep0akkLoZMyW7mrSpMUDNTEj7u8lPjDyGQqIB+cF2eLLoB4+5VeKXIjYCS/RzMqCL8
	 EjV9WPW+T9lgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B3CCD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131759367.11333.4915743019723503737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97da09aa18156a9eac96bd517bebc16ef10ee7420fb88049714be52eef12f44a
Date: Sat, 13 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781317593
