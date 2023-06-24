Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C70211184
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFC8C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687646588;
	bh=jfa8krM2mPn0pVFDP4Ekt5xtVLfEcCm6G8CJO689EYA=;
	h=To:Subject:From:Date:From;
	b=oqTN7Qqn9cV0VpdhS7uXo0QRQQIgw1tFr0TSbUfXp6P7VSfxO1DDTR0vkdQKJwnnX
	 HRLWlBuU5va9pJ4SKQaAtY/n0fgtbcYXNkOCCKkwRfIzzg3gfHVa49nEIPOpBlLd2q
	 UQR+QgL+gZCToSlshQnUusp9a1l11Ov0ST7TH3m0TyERX8YkVqt81SHtpKdkIl2SAl
	 t0g6zyg9FM9K6Qz6lzFF47R7xf2QeyOSsTw6Vm7oXc/IFguUb0H06hAbgKX8Tdf3k2
	 +FCotpzp1+3ThrUfc1aom3NvXSkvNUMzN0BRB8ZEF5CmAm/uVQAPSoDGXTjQZPVl+7
	 30Od35dvj7W+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4D2EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764658867.1777.16650613374284661425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd37ae4710c8980685a22b4278077c78ee9e7495b895ccf59650e2d76e7fceca
Date: Sat, 24 Jun 2023 22:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687646588
