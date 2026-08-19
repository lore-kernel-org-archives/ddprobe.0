Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C643101C0
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787143834; cv=none; b=K68aT6VWtleSMmjiKUWmtQ7dVsEchue+0VEEqUimGvoQis2jc2vMVGm95tCLxRB6vtwXwbLhmmuNX9OeeHlvkZwrATHXcxoI00ldJFHT0zhKzHPmRDBRfgOoawNa+LBWeku8mFNq02XgK7PTqhkSBdsr/4FSZ7drHJ6d+Al8jwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787143834; c=relaxed/simple;
	bh=feQyc6EemdlGzruewDQ+Onoa7iJfno7Ev7GS0Ixiyt8=;
	h=To:Subject:From:Message-Id:Date; b=kbClU2tLx3e8i+a/h85YQOA4xqdM8iuK2LEtQrFR2CBkVrdUNe4Dv6VV3uXtwP6rApB5tX4iVqL0GTibN2LBzVo3HEpQIGei1KHll8d3Z+Sdbf2m9EvX9hY+23sJdkgynQlsyZq2kAnE9gckSMAyVuWUlMMxFs/6R5ScULPlYI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nj9DhQmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nj9DhQmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6696C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787143833;
	bh=feQyc6EemdlGzruewDQ+Onoa7iJfno7Ev7GS0Ixiyt8=;
	h=To:Subject:From:Date:From;
	b=Nj9DhQmGhZVSYXp0lo8gsEaXxkQQ+LJohw0iQrlGS4lHMJUcPe5NMNCf8Z3xUsEGC
	 3XMY6/9r/zo3nuGts2VZSRWICZDUjmmUoZow8dTk+/GRbOOhN1oS9BQNByiVrju3ra
	 faq5sUgWjuqsWL4mgi3+G8S10zZODphTjuofHpZEUxgxhwQii2Xmb8+mcjNOWETynj
	 Dyh1iMr/V5PRnHkLdJ4WITGDjZli+3GvHaKmcpHKaTJe2Ve3Zof8d4Mp1iswUhhl7I
	 SgfWG9GYMBZ/o1sECDg7Lc5nv9hu2Zj8c9+RYDYDBJPo9CMRf1cZYIDDRGOSPMV4nq
	 Mn745qIwyBJtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D3C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714383371.4071.15970727687349550739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d88b735c9b749545c7c372418cdd245668cb0ac42e705c4b5d75d715a374f9
Date: Wed, 19 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787143833
