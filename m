Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07612F22
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A723C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665264053;
	bh=Pnj9Fb1WLae1c/hl4QitdScIXM3ghap++ZFBxCKZwXA=;
	h=To:Subject:From:Date:From;
	b=a4LgnGnK2CJIpnpL58XFe33mVfK8ZcE/3kYrHtuwwNUJ8CbxJPdioEQZAMKsccbQf
	 +4Z8D1pTghuAkpDKMfYSGNVHKG1CRhhM3ZSYrqPmEUBG5lKjE3ZQyW4io5ghyC3w3H
	 hQw9ZCsdYOigmpPQ0JchE5vIoHwJHPdEBRamkDlZnw9lI7NQaCJDPSVXuzLWlJjSur
	 oGq0nlnUEXuORlGuDGTr35SIw1JPhOIKmr/OnOoN1vLaMSFNOO36GwllNB5UmTVYoE
	 5+fDV3Wg/wi6/XBR61TpEFafXL5ykzOOZSyl1oY6w3CNzUHG4wXRtk9zJlKpfNEuRp
	 6u3laDixX/bRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F420C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166526405334.29439.17218209446990286744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17946293fc62c9b39a78c7cc59fe5686e5ae7031a240186032ffc20390002255
Date: Sat, 08 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665264053
