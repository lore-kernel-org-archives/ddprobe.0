Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F70962D
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 03:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED56C433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 03:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690774328;
	bh=4zKmhpZIZXxXkXNalPxZAcPiuDmiJq9XVvSkBqO0e/U=;
	h=To:Subject:From:Date:From;
	b=D/0rZcrRHcV9kwzLvWGR9WLbX+A2y8KIKhYQqoNh8VoRPhcInMhHCOQ7s+HgzQdTM
	 GQzvdljbektq4tCzBfUBF450rhw2pH8YGXOfe+3hyvf3jrvHby4F1j+hL7tIifJNIo
	 KLD7RiSjgVop/g+kDAnpCTlKrkNkrLUuJ65tF7bcfghnuj8brPLl/o1yxo9oJIO9nQ
	 Y9ixB94PpFJy67B9VhG7OqRyTMfX2nKM8IufkEGCDCrJ36X02tJXosKRgmKUONj8yq
	 XL8WU/uZ5/XUoT1c/MoS/wKNhY3NVeF1WCb0JpXSmP73QmOrTOb6rFdUSyb6lXP2Rj
	 +QcAdc+Dt4B6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4060EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 03:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169077432866.2129.239218071357511280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccdb0e44555e1f5ed1aea126bfc51f6e3498e9816b2f8f65b4f91148e5331409
Date: Mon, 31 Jul 2023 03:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690774328
