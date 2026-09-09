Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3AA44A3EC
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788941434; cv=none; b=EgHXeZWsn7GythvwSoIkbpwrWY9UBF0+EXxVLelLSxM2aq85y5TW3/BRejLpZvOiZXp/sTsWKlUVnvmjDMv7rpQpxgnhRiAnOrKMNZ8u15paqG8zyklEZrrA3Ovqlog8XPz7EXyTZuq46VMh8o+oAEBlFw611TBBEB/EF/9dfwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788941434; c=relaxed/simple;
	bh=APV3WB84WnXx9BN3lKBDx1Gds8CZH8/vntxdmnAKLPE=;
	h=To:Subject:From:Message-Id:Date; b=YmxTQu6EIeYg/SQZkUMu2ChI3bPX/aKjApQ8j+H5YpPWkeOvDxMgnRoIlOSd1LeDxqhjO8iMmcngj2lsskyza+Jj+UuPU0wP77Y/4D8PPXbS2GL2e0/mfjnZhPxF0d8PoN5DN9IK9oAhVIVS72AcO6s7gxCHQjM2SwomPw3Nig4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5K1h/QP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5K1h/QP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4E2C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788941433;
	bh=APV3WB84WnXx9BN3lKBDx1Gds8CZH8/vntxdmnAKLPE=;
	h=To:Subject:From:Date:From;
	b=l5K1h/QPjY/1mXxHqXNphGTuqF6bITz56NAu0yF8/e/qP8M3GJnVlRPPDNhp+9QNS
	 94KxO5PG97cWnC3NriUlt1oFNZ66BSquweVibkBU+NKqF/zuGSfXYQ1Au5/VQc2Nw8
	 fKxmtZ8VhLhKtkzSH+QV92RyZL9aqb1WnKd5z4fcnniKUD6TPLl8xZuFSuVHT5r7Lc
	 EXTEr+KUux3oQ7sAAhsYmLqgyZeck93ODxNty0P0o1UUH1iFuE8VTihhmsgQjHDx4l
	 jiZ1QvezJ7cl80ZAhpXpDdinBLNAVo+l6rwryb2gQoTwdlQux8t8n/rHwN3wCv6U1N
	 eH0CjvlyZi+0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A930BC79FAA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894143368.3037.7087495047149877934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63f75e8de3b340baa62ae8696498429de485097496e7a52b679ffecedf86cf2
Date: Wed, 09 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788941433
