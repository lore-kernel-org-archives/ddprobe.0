Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59371168D6
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 09:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGVFQKZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD840C433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696844828;
	bh=FYRCPRs19aAwjDiO9roDlMlPBfuHyf7xEh9VhzgtBvU=;
	h=To:Subject:From:Date:From;
	b=uGVFQKZIclt18L0lCZ3JT5763q+CEp8crFDCzDCLu1oKUIQ4Cnjkt4QG4byNG/kW2
	 DpQt0JiqAeNuEu9xtx/04emtwbKtduQlurpVnVeHwlIdKX6Fj2UXGv1qhRShSZxzVJ
	 z4zb6Hdm6/hH97yk9NDwMmDN2cdDWrm/qX0ErSpTEW8TquX/ObyUWwrHu/mg00Uspa
	 iykv/qO9vCNFcpPuomu5orAiDBJP31oA7aRRTD7/SGeM3nAKTv7ZJLbATerwkbftE3
	 n68g75rhwht+YuQW4mu0DWF/dNpcJCs0pApWthQp2waQEK6cRWkZAzypN2XDrsv+OM
	 cbDFYTpvnMzZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE00DE95A91
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 09:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169684482870.10172.10989267547136883334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00cf5a4bbf342e80a77ef2d6c3e2411c5e778b2c6bebaa5b7985920f77bfed1
Date: Mon, 09 Oct 2023 09:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696844828
