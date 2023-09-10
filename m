Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F372586
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 13:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C196DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 13:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694353448;
	bh=qXRQatIsI7nKzg50Cu2nMSfQVjnxpn6kWJJNxfh+AW0=;
	h=To:Subject:From:Date:From;
	b=LkZiHUYbnz4o2BDcZYqO4SkR0lbjC4DRFoVJUp/lTDBt/CIX3qSv5h/AcxjH6nb5L
	 sWZqD/uV6eNR1zrGsU6lJ1RcuRGKf5DE68z5w7Iy6mvRjyl8rx9vr1rSV/ppnmR0c+
	 e8sM9EhKmqTsx8AnYTTk2385m/H7OLmPxCLBQ2U8kOfKUj0F4UYnDfkk7DdYICbXbA
	 FxLIOWezM4w2lzZyK5aNAHmdohZypGcqusnBUKXdWwAUURt0gCBy4hn9OZBaSzcdHc
	 rVCsysO2vp8QMvaQy5rYyQUPWVYfWDrIoA96mtflqGOB1fxON2ZZGkMMyAGuFDx2fK
	 USML4VhJIrUFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5375EE14D8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 13:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169435344866.30623.8195959781917465476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ec161217ae42493980be8fd40586e35474f4ccebe5b2c0c5131338e7b4d6c3
Date: Sun, 10 Sep 2023 13:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694353448
