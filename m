Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8205D253A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 14:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9FFBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 14:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689604868;
	bh=uU5baQ0DyJi9JJ11BPiI4NTMj7r97LUEXTO/s7lW4c4=;
	h=To:Subject:From:Date:From;
	b=uNJwaa0FoukORgT+z4/BM4axuyMpapxsFsswm79WI/56sHWG6TYaOJKQXexoyjAKd
	 /Qp5Skvh+Dn+39s53ebLmdCm78jTuU1rQsdvmc/9u0K4en6B0gz7VxF7X5bqt80Fc5
	 35+5MZ1DGAhVOl7hovEVAJeSzEgSk+CCxSY6ozxUDfID+dTACyktXx9pJRNr/R3cD9
	 j+twRl7qIb4udAK3TYVTL+QEBfYEInezlyUxm/nVwAHd4e8FapnMFCTzBl7vpuWroG
	 s+KfeZA6eDDIFouCWmf/86pyuABrfLuHWAfDpxnu2xsuAaS28fzax8BUYzi4OMlIIw
	 sIKyDYIqiL8sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B66EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 14:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168960486883.30936.9128644319906617876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0bf7236efd15b028618ed2dd36458af81935cd81ad04931ffeea58e574cf44c
Date: Mon, 17 Jul 2023 14:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689604868
