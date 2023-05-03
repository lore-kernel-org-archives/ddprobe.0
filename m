Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D414DF4E
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 18:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0047FC433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 18:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683138006;
	bh=CC1lVw5XeQXkuOnzFBQ/2IIHLnF9nPnDlVPOzx9ADos=;
	h=To:Subject:From:Date:From;
	b=MtzxhwEsXyE/dElrMiT5foBZBPFPAIwMnVYddSjjAuxEaM+wrYcRBssO3nbAP0r91
	 dchZWV+X0elEo3IeOHYn9dlml/lC+SLvLpE+5A3yzhXrq9JKPAGsqUzK8DNy6TiFt8
	 wU8l4yaxOqPaObl5+rA2uxynpHX0rdbUkXBK5sgqjm4BiZ+705VYaVuUc850L9lT1A
	 U2HLWENwTrYMpqPZ4ePGMXB+FAiH9/wChQxnJXj1VkApzmEK6bZZsTWsaQOPXE/QUx
	 Kes+IgU/hlIAgNpXhAYxyfHX+3lgzuddTTqNPWZugw0ESZBaQ1RvRz3w+a5mZkW6Be
	 BYFekf1/5K7QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF715C77B78
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 18:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168313800584.27989.7558590976113955345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49fe1355cc32a328785c55b4dde18be3547eca3d03ee9709602e2998db59822
Date: Wed, 03 May 2023 18:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683138005
