Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F7F4696
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D8AC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665008453;
	bh=btjMkoGcRCC3P9nkxlv03MoQ5e6srf9qHY5vSFjaJ/g=;
	h=To:Subject:From:Date:From;
	b=ifXy5sd2brpowkgVKKZG2fsIZPA4tUjRgykDz6DeTW4decxSMhamGgpzGbdM9RkgC
	 6z83+r2+E6EZjUslnjTWEQ0Eti258ANGkiqY0R3bKRfBOOv5nqnUs4naYKXIEPNHNT
	 Fy0PHfTSoIZFFVJLjUaOuDHta6RvG+ddpln+ifsBHzeZyTCJYgFaJSBWOM7RZsy3UK
	 Z3DlD+JGtq3DUoGVEIvKHsg3OlVkfS0+OW4XVb2zfbUSv2nZgK5Z9SeUWaAH4Duj9f
	 POrWndvGRR0zCuuHYhHege6Ap8dGVfdXLfUEkgLliDneYhxs/xdUZfIh31E+/Wco34
	 Q02z6bQcDcTuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EB1C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166500845333.4252.240032213146147480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d700f9923d979e7a887541186c33476a60814201c7f9487179120709ec5544
Date: Wed, 05 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665008453
