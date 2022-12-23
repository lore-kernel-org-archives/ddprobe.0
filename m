Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6213AD44
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9B2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671837687;
	bh=NoGEsHNu35lJxje0+rf5/1NzUaGcNKFhkXfPToNOqF8=;
	h=To:Subject:From:Date:From;
	b=ppO6a8AMqQsFNxTsHLukFA5G3SYdc793qtH6yskbGG0dNxepnVvWFCU3CW1lF59H9
	 vxRbwkll1tGNcxWd9VfQ5rqggJIaYqGyN4nG40yzUOQYmYfhoEV9w3kSfze9Y3tl1p
	 MFtx4MFYe0QqhYIsLv37dP20fHWLRcbd2X6F7crDaue58hpIxXfQ3R3Txmo53IT4If
	 hjXrIaOdzMa54zSvgT14NYPYs+qw5Y6etXDUZ9689n1EyfOFz8wwV++WdM0sISRIch
	 ggLq/twTYC9ccK47Hww/y7GZ+dhHaWhKP7N26SaDdmdtiuDwVLF2xG4VK3quD3bSrw
	 f4H+0LtyDnF1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A27C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183768741.13250.4159840325245623665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350716853491313a3c41718ec77cb3d05d883966a234c38186abe8af27406ca1
Date: Fri, 23 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671837687
