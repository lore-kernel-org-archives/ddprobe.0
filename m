Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D68F101DB
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A9FC433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688410568;
	bh=pshrboMbqLcZgHTu9H9KUXH8CvJd0GYE+yhlucLymWY=;
	h=To:Subject:From:Date:From;
	b=hfwTwpXW1vpKUwEKIo6i6Levb/H87aBXmTK7aiKO4+SKKUfriY1O0DYZwb5hEg+GO
	 z/6RF9Ohyt33qbz14rMy/x17a0uTDMNcvhfbEyVTT1mZ6kuEH/lnjVnXBDBWpS+Uzu
	 S0JUdNj68evxXNhrVpCg7qN3GObEUjhuwhcUnUYj8heDblORu24U7RC2gnQmiYzFAX
	 ilc03h0Od8TXwjwMViA28aCHrzqVD1VtFXhnYunkQxZdtOSPdb04Qmo8QahflfhNU7
	 i6vjRvFiSNTJZgrZDpO5fQi0zrlxp3/3zpWEXyPaGhu+7fVUcqYr70hz0o6mKZk3N3
	 FjkufmwcpmJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB273C001B3
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168841056869.19979.8846058558155994074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1036cedfe619ebe206c2a94c04a719f512d87c53caa66aa06b2891ec05fb089d
Date: Mon, 03 Jul 2023 18:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688410568
