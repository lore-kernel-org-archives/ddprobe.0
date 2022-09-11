Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59EC7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF85C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662940253;
	bh=9GV42P2PwxNTypkQJX0bAZaLhDKNjXJwxjqtsqTiP60=;
	h=To:Subject:From:Date:From;
	b=WMGalpsk3qSedbHKeiNl+E8E8bex13v2UihXLFHyiEdwO8+Wi3juoovU8XQfhXx/a
	 rg+Hk69bL7QP01xB40aFTpiyRxmY4qCEZmJTIPPHcSrV6XSV4OfS45W0D3qU0B7us8
	 pifHL5bCkMcw+Lm7ElsrFnCvu8xhuJmoUkSvI+XsU9BlmYye3+pnnTO5aV3GUB87yd
	 K6qXZ5l1Gq3JZHMWYTLRtU+RZVrgpDnsxR+ibrJ57teeVvXWMOXZapZG4oFlaHU8Kz
	 fZb4GSi0OfWXmwhqfjcJjhYV6uD8rcYQKs1686nEBSXy41XNhitOYdZDJR8bikfCql
	 IC4xaadpB3bew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52622C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166294025331.14806.10314827608788873959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0618c304ed91e5c76dfe31baf167573e48e39c444ccc4aae83651192290a8e76
Date: Sun, 11 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662940253
