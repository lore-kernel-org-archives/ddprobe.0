Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E0CA3D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 10:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7439C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 10:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686220385;
	bh=xJJlpGkZlbP0cfZiizxfKkjfHztjIpckPpet8z1kjJ0=;
	h=To:Subject:From:Date:From;
	b=pVnNBrPIqVAE02cn/LjDy53ekPTq4iAcDknz0hv3Am6Q1xVTVsiR4uFUzUSpC38v4
	 Dmeug3fGfieScYVwcpw6mhhICl3t2kIJLQ4v+urfEJQeeb/5xzeyVNb/5fv2PMStzg
	 qVA65ZS5crTkrBQYYRUvmD/6WyDce6fg0NxB1ekYS+ZOdO7Tn9PzVs8Ytqf7LBg9iV
	 bYUqzZ9ojyUlT5dnCvHgKrl4bAMFUSe/YCAYirncPZwqhkVB3c9dudQZnpORJfRZBb
	 hL6eIoJ/OwVJHrlv1z8ksgs5lPfWnFICWl5Ge2uauyzTlaYzYWgnQoB01QgYsXZ+TY
	 1grWN/dWCUjxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B981DC7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 10:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168622038574.702.803847300933354212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5e5e7501634612d7dbe030e2bf479bfc8c390f51bce3070f730a848be0ad20
Date: Thu, 08 Jun 2023 10:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686220385
