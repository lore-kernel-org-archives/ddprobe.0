Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200E22DA749
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772322294; cv=none; b=rLZdazOPefaXne/ApxtJpaH3Bw80+eyT/bypeA+XhhAVciTlrGSlYBV/Qp+JlhLIVQCR5lxVdn11FgGMEp9hVNjUUlkUxDQQXW5FJrWZzud3hR1nlr4WXUM6Ze+Fne1/LTIrA9jXMps0e/CYQcfOqz+Le0VcplLrtRR5Qs1njzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772322294; c=relaxed/simple;
	bh=POyVpy7y1uo0EOggpHkY6M4zA2IHYOtLSSEdEs8KFl8=;
	h=To:Subject:From:Message-Id:Date; b=gOsPW8UksUGJxvr6X14lCBT9r4JJ/ldSWXALkxvwXwrdAKwv/pM94LwdPLUB2bz24XzYsNOiFtscnX4UjQGqp6iND7LUKEK4pnibzIoiVvyANvwHYV5SeEtcHRY5XjogVR0FlPISBMC5e7zjGi7okZN2tSamW2ncjfYGvmjAicg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sW9Y4L4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sW9Y4L4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4957C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772322293;
	bh=POyVpy7y1uo0EOggpHkY6M4zA2IHYOtLSSEdEs8KFl8=;
	h=To:Subject:From:Date:From;
	b=sW9Y4L4oZb7C3D7+0PSUFIaNsmG2cDhPG3vjjBRkUfCsUAATUmkbk5HuVsUTfmqBX
	 u4IwyFdJWbzKLkDB0JvrRq03NRc17TMKSHeVfbFfnLLsaelzCR2T+j0aUxJDibZIZM
	 TnKJZ5TA8xegjvUSMM7VULQvrxWcZOigrQTd57Ncdi8tLF/amGJE+dv/P/Syzrodub
	 s6lXiCi+m2HTlN9cyAV8P5tRvFqzk7KkY2tAhlBKxSbdi62dIL8c5bGX1xQRlHNpou
	 +uZ9CazZOZE7eqZKxm9N9+7fG2Eon5NMOQjRl0MQpjMFscfBz9W+wztnxo3xGH3ICO
	 mBJQ6LMPB9kgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB3AFD0040
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232229360.30562.3502256394883775577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb929dd4b3b846f651fac9739a1cb642028d2811a777209cb4cbc7435c7c073e
Date: Sat, 28 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772322293
