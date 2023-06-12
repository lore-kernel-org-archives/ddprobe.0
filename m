Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93BF0BE63
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED070C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686611706;
	bh=1tm+2M2d8aK5/5ScFdSjNVv5gqYjC5rBiEtk/lEwJR4=;
	h=To:Subject:From:Date:From;
	b=SKsxxbjvt5asWJoeBclyTLGKl1F1zAMAvzTYYwI6jdMvJMeKcXSF8G+k31vlccxro
	 MBy50nt4ch05V7Wkr23wTtOtTdol0lsOpcnbvRIItqIFJXSPy2t8GTETHin3hkbfx6
	 WSLb8nJQ54L66YMSBMMWMI/RvHvEWWfJwJOyP9S6UD2QkZHaiv1KgdZAS7NSt6AETg
	 XMgq/2VRWcfGn4QTMSMpGqCxoi1y9CP1fXT+IzFCaTlUElhBmsWvR28OQGau2KOo+i
	 VXSz8G2DRuhoFCQNwVr3mie9B5yLCnxsScS2JYEDX6Y7SwPXWRsEH5j+T+i8z9KDun
	 edp/3fvDyZ0pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F99C7EE43
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168661170580.14546.3159902555898670073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25226d6017057636eeaa02f0ee3df419687cd7c238f11d72f744e0efe809e884
Date: Mon, 12 Jun 2023 23:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686611705
