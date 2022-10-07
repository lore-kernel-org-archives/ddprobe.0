Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122CF468F
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BDCC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665159053;
	bh=49Ag/AugEzhdzXLgasE8UL1Bqi2i7MfvYc0FFWGxI/c=;
	h=To:Subject:From:Date:From;
	b=p8pLUNnUI7Xo1FZ5dgW0cevSQgtCLlcUiAMb//QE0RWPG62T2fDiWT/Oi2hgB8/Uw
	 Qa0rq5fyseyG/NcuW286VNmgFiNzGO7FMr6gIzYqMagTpoMHksh/cRHk18O4IKHYMm
	 8PK6SHjzQn4gNtMe0Ws7YthXFKnOMyfezrxeymENfA5/E9TjoiR5FcBd7zZQL+OCOZ
	 G9T+AauSROtnjw/5HSclLh6lAfDUJh+fex+bftGB5HdVS2GO45L6N1e1hSRY6QsY3g
	 ljBg+qbRxo+BQSQeEfwIsNiYqopGqQaZxt4w7cC+Hbeov3GOiFlRYcnW9CMf8/4s4g
	 6pPwadzK9kEjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911ECC433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166515905358.1433.726334596338848894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7675ee3f52c0f680e9695721df84cfa7c0c2fb912a445c91139aac925fa6e1da
Date: Fri, 07 Oct 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665159053
