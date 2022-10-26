Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27257B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70702C433D7
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666743653;
	bh=LqCy7+n9BXwZxfk88xJCrZ1hIANydj4IMI/mpAti0kY=;
	h=To:Subject:From:Date:From;
	b=KZNlTB1hJR8mLjXNj6IWtDtJ0KQqOxrkBbtGCsi7JvhX4SHXbtRXqNjRBrdekD0ay
	 2g3p+VYHDVG1A5ZYMOkrX1SproW/n6dSJnS3CadIoQe10O153kzNiy5VFHTussOc/J
	 xgO4wnzHZ+FOqaFLcPhGO0Gdg6fd7/qm3C8e+BpbS0a28aVWsriVHhzrfGHARJpFtp
	 SU41UVJ67jrsbZa6P5hvEWgtJKlIMbw7s8XOoBfaRtzgOQtnr5qjjtGnRkj787kKKI
	 gEXsPl6Dz61n+DWmvxnmNgclIYT/y+VGkp+yD2cWcm6MR8o+Hbgn6RlcDbQSnI7RB+
	 C/xxylsNRvo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58678C38A02
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674365333.18505.2642371770393131361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fd2b1226833a91b749b81c4ac55792a3e01383f8e39e645ec220d927a76578
Date: Wed, 26 Oct 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666743653
