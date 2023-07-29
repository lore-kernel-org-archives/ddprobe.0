Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5054B15BD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 18:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5C9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 18:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690653728;
	bh=Z8NPpcRB7amB5zlTY74/ZM+NMzjOKzo2doYt1rJIvn4=;
	h=To:Subject:From:Date:From;
	b=Eh7mX2qEDUZTHdEWRBBACgZCRsMGAwd023VEk6etHVVeJQyAUzwQpbyGUz1Wf7G6l
	 axsfI4kX7dempjML9n8DbYvNFroI7BwvotQa2JXisbouzku5OSuOcJ7KAGE0V/bbRd
	 P2Joo+r1z0WXyyP0FJwJeu93RlenRcmmkl0YyFcfaEsHWRLEN2p9uX38kqIJNHXMuJ
	 +iEEv6q5F9RSAWeTYL+xK7/UCAx6heTpZxbKh0nwrQSVCgOOpN6FF6qUVivKODrjuZ
	 c/c/GJRy2r+NQq8Q62P3rQe4TPtPN/V46aASPFXCCW1k0T2O82LmM12u+S7HahGlFh
	 D9wzFkyEYqW0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26ACC001DF
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 18:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169065372872.6956.4094696581423041943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a79572fc984d88d01bc53b57378cf82fe86e0c672b4ebcc25b13b984713e594
Date: Sat, 29 Jul 2023 18:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690653728
