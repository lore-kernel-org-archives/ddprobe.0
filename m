Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821CD5CBE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCA5C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687938188;
	bh=n33GVqnAKPnbAA/Qe3431VPuVBCs6RqB10o1Z2CnjTg=;
	h=To:Subject:From:Date:From;
	b=ZU/GKhNyISk44C/W4Z1l1XoAtb2srvN0pDJrKVQdQkKUfOlOk63OlxnO0iDcRqCdv
	 KIPwKxaebDX6pZGpchG/XHMPgOSh+baBL9gSDLgz08BwY6Dc/TRxaZh242i2CBkmr/
	 TpqYQQafQ79UOSBSyQz4/1FXukKhek30evIVT8//1JMfug6Er1jnR4pJk+8b+K8Elf
	 GcdzkhqYsW2881NYtdpCHdem2ZESV0Kpu9Nfiyaf5emhGpVedE+kFU/qN6cXTS47Pk
	 vuMZL0MAwqzOxEMT8+uFrXS4B0kxJPRB+1aQjV15iySjZ8bPFt+iJaybYVhmAB5Ffh
	 +w6FJRI6kk+Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD136EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793818876.9473.864165987913661334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889ecc527b0105f135de3a66784f345ea81146f53d314ebc8655c7f8da5e166e
Date: Wed, 28 Jun 2023 07:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687938188
