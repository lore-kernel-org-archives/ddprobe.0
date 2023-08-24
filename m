Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7169FD524
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF99BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692871448;
	bh=AlNzpu9/H4XwApij888LF8eJl6RKtVamuoE3PZnJeb8=;
	h=To:Subject:From:Date:From;
	b=ZM9CDIVv0/TqT9yeeN6Xwmt9UIPRzP6AMFieEFBlg5LxljVEVa1GBXWSG4eDZiWGN
	 QZ4LDYgB7EzpRMXH+76tsx6oJLHcwTldFp5I8Oz19dcrPwQUlV/L86N6LICSuxvqlO
	 ddLqosIBlybwUeanRZkF7+35ccXTm1JkFoWwi/a11UR8ucbY3VcMDp12pI/ByjF/ks
	 TRWOWwsCR3SM0FR9Dvt44U3ZnemCaIq/1lBdSs8vjII4mrRn+TJ/w/nWvsUEx9ehhY
	 mH5GgbPM0GF/LOr27lPN/JlBJgqR835+Xgl0ZUKkAI8b2tKJ+6tgBl/+gYpje0Z6qy
	 B92hs+UVzovBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5B7C6FA8F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169287144870.22140.16674475039944819653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1969e0611492b1bf907b37861b41971d34d4c83cacc1fbd209dd4de74388fb
Date: Thu, 24 Aug 2023 10:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692871448
