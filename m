Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4334314E
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEToTRgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93360C433C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700243296;
	bh=xD4xyb4sZmvTZvC4/POr2Jjl7MKNwOTlb7OjhBlsISY=;
	h=To:Subject:From:Date:From;
	b=qEToTRgT0SQEkCA+uFQtk58tH0SDjq/uVk+qmdpHGOxdCdUu4We6agOIXVzeEl0zW
	 PMo83fcfRbYN+nYFaFR1z/STu1yu8n4GMKgjrpY/4PVyJ9ra6L+HIJhK1FqOZTlGzd
	 Kl1LtburWlYVETILuvQWqHCkdyActiw+4hajdaRVi25XgwXPk5/6k7rrOaR3+yNGtD
	 dYCdFn2gmT2v5OFwZ01KS26l1XS36O6vlSVY1qUorKzieQEkiIXjWqOT+UoTsBNYe0
	 v1REiN7sTbwFx6qFBQQIAIngPlSrukE+Rf5ZbxhDr5Aiyr7Bt1GRsqzD9yxSvzuPDj
	 5IShyL0ZRkwMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 751DBC072A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170024329645.6845.17907278854465876445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fc75b6bc091856e41064666a2c3fecf72409210eea53ab2ecc9c5867a9f194
Date: Fri, 17 Nov 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700243296
