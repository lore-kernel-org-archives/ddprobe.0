Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE46B7E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C50AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670558487;
	bh=zvUJVPf1ZOy8ys0JWHNAB1trcL4d+c91mSQP7gVC2GI=;
	h=To:Subject:From:Date:From;
	b=k8HwryK/FXzGNZEgCPl2Oet2vrSfYlG1kZmMrnvCi8LeCQOtyKYhaBvHWVj7S6YDc
	 u8zAhGc1a1bYZLQdIaTuDNTdkGq48o5ZZuCxkIW+cRMh42USpGG4SD8V9mVL6jzWjc
	 97413sQP8hE3r7DiWUg7wk/dmA7amlRQ/ReE7enRCLeRsMZe3MJb8tFGaq5NRW75NM
	 9Pv6lEHRyFZeGcMNHhuWbzs+5gwVDZXw9Gmx6PwSAt/AGZGsmSKonnjZE3oQAOOL/x
	 CgdhQkU40ShwZn2aSbuzubSsgoZ/q9a3q+3+Yv0Ys7TX93sB2Lmnm8r3aZO8sqW6XC
	 kTwqzlOLLFUpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AA9C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055848740.29265.5770818087533659246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c092d2d13612495f0246d899207e8803b17379fbadb8f085ccf67fcba9f405
Date: Fri, 09 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670558487
