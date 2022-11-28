Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55587E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E09C43149
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669600254;
	bh=L1YZY4gAlaC/IEgd62qa1LznO0r6Znq8FvSCH23XteI=;
	h=To:Subject:From:Date:From;
	b=OonbmBbyN9phwsT/8PFwxipNAkwmJuedy7IefjTRxBmF3kPZ3gryW4c26UNdQgKms
	 1C/FXzZD9GgtgmufVFJ8qbFPId+z8rJ2rywnB2VS6xObx678F3eeYGijLDkWUviFr8
	 A86OhcHOpw4bNo+iFy/eaaIzB+YXQd4/wu8SkZck9nHO94PRneDKhn7w3kmYgRFs+v
	 8mzjUKY0OC57dvGPwCv6sC5x8fglWHSKMF+Skz8pDYLLgdiksULkv70BDG3LBIZq6/
	 JydeZWt7Ctof3gOPfYCNA1jEabu6BCNrv+T2ZJ+BRbR28mVwktN2wvXlcL7vaVPiT+
	 u1OlaCVLaqBOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6630FC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960025439.9347.9379107771467253845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b455ba2b58274096e36d9c858aae47dc82358266abf27457b56771fc95b22f
Date: Mon, 28 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669600254
