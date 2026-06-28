Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77EE6CA4E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782659914; cv=none; b=al/TVQPuXCpIZZOsjVoGmGWLDSLDtgqnS94ca8L/WHkpWRXcSbZeXNA0fvRpdWZXVtIuQJJcI8FvItJF9GQ8PqAf9C4cXIhAObirnt+fNf/wDGWAy/CYZmysWnLd32KI0retnZjLjFrvtmlaojDwYRTKke4/mEEBiC2iLHQagOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782659914; c=relaxed/simple;
	bh=wMGPGDJxs6xGKsJsvI6ysMgnKvMzO3VY/jN3QI3xM48=;
	h=To:Subject:From:Message-Id:Date; b=iusoZHS/wCe9FaLWMBdyhJdEwDQ403nV9JTz0GrZbFcYiVemcZ+0j1jv0AEDvoOC1xQc/aF+/avAePok6Cn5vnaL6PIPY5o0NFFRM7tVZXFOSXa9omcC6DBX5eKmlgpi3WFf0MBFdruIrbVIBT36KBg1HgvRO8PjzB6b/r8gK0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+mZQ9gw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+mZQ9gw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED89C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782659913;
	bh=wMGPGDJxs6xGKsJsvI6ysMgnKvMzO3VY/jN3QI3xM48=;
	h=To:Subject:From:Date:From;
	b=i+mZQ9gw/osI6nx0EmyHBfdRUkAVmKYvQUHQ6KFIzv3g3+XhlZRMmDoWK1UgWIcRY
	 htRagHxphWm9EPwLTKZ2FrcpFTtwwIGMg91zs7WU7JMoVZxVBaFb9MfzjzGJSdvwhd
	 QsTixUbT3UCgnhWdegf+7ZvAeml0Ucpiupd++nJe8U2RM5Zu5nbv8L2J3w69iW+Cug
	 1oGXnDEFs71Qwj5Cgongjj+WGrrWhjGhM9mT4xZwq5s3xAK78XdxehvDqJyjjU0NYB
	 sYr5xF9iJqhiG2M8xA/GITTmWkNp1sQHkgV43Hbd5ySs7Zcbdl6sCORTaygWXc+Yn5
	 WML0jp57z9xFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC481C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265991372.14395.9734812400818221679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5c637902950238316ea10ee1d4fe98ab6bc62a2502fea1669e2fc7605ec467
Date: Sun, 28 Jun 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782659913
