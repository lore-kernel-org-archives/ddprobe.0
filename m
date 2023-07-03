Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A571C2F
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 09:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BFFC433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 09:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688376368;
	bh=dUcBO9uwQDg71hSBeEkcKKBm7lHXpKLutZAdV/ETEWw=;
	h=To:Subject:From:Date:From;
	b=S74SZz9rsRJ2PcgNcZyud53O33Hw4AwjeKmbyssrle14iEa8V9woqvqimmBXHd149
	 vJKblLJfVTOdVbY2OJ+hGxx3l8bKXvUbHkGHFA3MyBVAP5gmoaSefKLx4grLL+2Q2F
	 OFkTbZ7LZeV8Z8wL9JDaEWSwe6YRWC+bQLbH4UasLM1QmgLhHihvMd/lpNGexqRW86
	 GIuh8/E+nWrBKQ8kdWpEEO/599HDuhh0QsfaOoLK9zgCtn4Swco+2MCZ4JnUet76TV
	 qwTIBGdssD/PC2pkN+CmiF60LKKnhnbF92eJaMk2ea+psCEj+YqfJqjKMk4crW/90W
	 3WgqCcZVdqaPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62C0EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 09:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168837636867.3258.1167398704136159587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d1a22f41be0dff61cf7a762a4a4b02ffb764d99f47f2dfd076119813e6d8dd
Date: Mon, 03 Jul 2023 09:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688376368
