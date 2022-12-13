Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE348472
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D015C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670974887;
	bh=aX59T6SAwvWqJ/la1xEuaLFF3kembMrd8WpMGjhVeys=;
	h=To:Subject:From:Date:From;
	b=VcGDaGprNahZgiiAd2uJtAcfIjStPOAzv2FwlSdN7lQQf46NgnK877yHVW4as3txt
	 lyPgs7+aalMlbV64+ix0mTmIyOWcYnJy4WyvBk5XVU5y7zi18jqygX4uKiJEzZY701
	 JRvFr6q9Ijq3phYAxEC7ex+xpMlOgS8ZVz8h5vJMWzxHjP+yGfbKQtXfHtUchqL78/
	 2UrlVdyHMhyNxnYFu691XhHU53uiTw90z2jxLZ/obT4XI2wa2frBGZVgerqhb8pcQL
	 Km125+EvvWFHi7P9YZsyAIRw0NWVmlHD4fpaeVQY4Fo8O6MtYWcVVajHXXi8aSOGSD
	 Ze4DKZaKm99gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64996C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097488740.9462.4032647296866739525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f5be45653857451b48ab2858b1512be3d55d20a775c02fc00e2900a0c2f388
Date: Tue, 13 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670974887
