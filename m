Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C9B17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E47EC433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664784653;
	bh=Qzf7SO4XvsGjhTH4FRPxdGnsZ3qck1fs8yC0OAay5cM=;
	h=To:Subject:From:Date:From;
	b=G94KxeY8GgcljA3Qu18j0nyXwGQxbQyycreOO/zbT9QQjiBl0djXboImZpGsf5eRP
	 1JkX/OjwDM7QPRpZikBtiA3Qnp4miLKhVnD35+zCS22CzfmfzdazUQAUApAlzsdgwp
	 W8T6HAIveOtfj2bDou2um0nomrzDxjJKl+zG9OTB6JauoB38thLRDnJ4zvPNSK66h7
	 cj2nmTlfc59vIl8A0aHW+up9CWeO23NPvohKRBubc8lNgtvkRVtac9Uf3zrklYz2rc
	 WAM4KdCJ990SagQyVi07Y3EI17XVutVDwQG09ms49dajM+jOmg9DWNQy+1N0Mp1Vbf
	 SUiahEE9N3a/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534B3C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166478465333.9677.3900184933377999781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c7bce6a475897da5448d69d1c611f987e1443488de98b95a3496e2a1a9b85b
Date: Mon, 03 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664784653
