Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413371DD0C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746031794; cv=none; b=dRpaMK7LaDE5ARvWJLSGaHd1JrkSxxiUzlP9o2XAds3bzTpzXpIcz3l8Aw6W9Iocivp6H0PbKEfnuCWWaL/cr7Gdm9vmTVi1xdXJzA9gVYFeP9IPSLOormtn/eertV3zRPhiaSvnWjxU0wF1y9YGiwJ1D9wHyEi8LCaAasyKqFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746031794; c=relaxed/simple;
	bh=5kJgYrPUOuOF9A1cyKPham8zQGLSed/JHw14E2DyJy0=;
	h=To:Subject:From:Message-Id:Date; b=Kb0JVKvsBR9RHqwTssp9z2ErWXd4xsRSJb6em9u/1q5tJnYn7Fpm0OQ2mu1gdqJaBd8bpnYAApU2VxleWK4jNKo2xc8C82M3c4S57MZs4034eoBZLOjkCRH0ZLdO3Qlx9c+jJRhUAvv3zs5UHhVXuCVud7xuKF/GbA53XMM8ikY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZlMHZmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZlMHZmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F61C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746031793;
	bh=5kJgYrPUOuOF9A1cyKPham8zQGLSed/JHw14E2DyJy0=;
	h=To:Subject:From:Date:From;
	b=TZlMHZmDHjcGN42/KExINVMNrDLqPJxElfKfvIKxUOGCYv7Esky2KOHf5Ew2SjHhc
	 PHdW2gXgvOfb7opshATMiKjMGliDYfQoGfc1DQUBN0RpMTWUfSTWZKyMklgOYYpqU1
	 ljahbee9nd3Rkhcji76McB6voPjpNMIgxSwDuJaeA7Xh5BL7Hkcer/+GcmHE3cMXn7
	 /lqN+QcGHpZ1n4tR1OFsTF52PyWONNYxPXL62WWwHkzYMB/+przr3vmpuj0rG6NO0H
	 v8uizce+EXrlnoF6bJx52kwPK4aM+3httz7Z5CyuxsvAIgWAy6t3Qmo2YtSO53el+U
	 v8nTzxl3y8yWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E794C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603179357.19812.421699048671949661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fdef8841664e6058818a4cf85a6a9d7cb18b32b0c4bd1b47fa217a0de842fc5
Date: Wed, 30 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746031793
