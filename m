Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF814EC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81860C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673764887;
	bh=uFyeongOwz/KWE+eKAkgSE7LrsCkuCTtv6BcbidVxbk=;
	h=To:Subject:From:Date:From;
	b=tB2ZA5uTgYJiMk1niVLpogdYY+WCFZYyOSOVOq8oxETFta4UMMxOdY+YqCJtYLNIu
	 v/GFqScOmIFXGfx/YcMO/d/8TsHQ2d01KKylwIZSvmrYhPV7AUokIl6CwXVPzAoRWe
	 KWWO8vx9I8dJ4IRtG+D6HjgHTyrxYikt4GnOPrV6YYZnXVR4+xt1Wua6HXFSeGRiNU
	 qCuUWnaWU6bkIW6yZIlrN1nUKOOFqk9xyPZjzEQcAxMr+J+hdkWO6bMZUTbMM65eEM
	 eCpYLrOSIiJf5JxS5zdO0vaUbPmyk5gNcfZg/HkWebNVgzxuQWv6qids90SOKrenP8
	 2fHKHhC211irQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BB6C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167376488739.25440.5062083273627093669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27bf141928301f9dd661fef9db75d409165a1fe49f76fa813f18993d34fccc7
Date: Sun, 15 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673764887
