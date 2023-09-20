Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E158F9E7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 09:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0C2C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 09:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695200708;
	bh=L77FeW7a1H77fk4FTzKIkx7xc6ouBS0LsJ1B8sO3aFQ=;
	h=To:Subject:From:Date:From;
	b=G4gRwml6kqLrUDcbrABdcF/Xcr4ZiSUGqYUR0JyrqgQQJWHKycrFBPaMOKFTqsoIl
	 RKZBmJy+E6QIEtpZGPxYGriAB33ooXyDmjIQVw1Npxoy63J2Q28Ab33wbzsLC47vtY
	 5R9J0W7IDgjAiGo65Nsdppev9AiMum7ZJj5KI3LxcJJTx5GycGT1zy8wB8xRcUxMuD
	 fRm5zKbtQH/oKPTQEGxgW8rviWUpH4ewzrIDw5gCqqiiWlg+8pqQS8yLWHgSzygPWm
	 eyZIP7FWTDVf74Jhxzh8u5khik48+k2SwFFAII26frETXwCxVUr52b1WEickVMaGVx
	 hgeqFW5nOIuog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4467CE79AB
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 09:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169520070866.12053.9089025710377844332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a1ae50627546221f95c98909ee669d7a30d65d4ccfba1b3f3018a72f07f8d2
Date: Wed, 20 Sep 2023 09:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695200708
