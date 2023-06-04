Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B5723AD
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 19:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20BB7C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 19:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685906346;
	bh=men6xUiIRXJGp+dL8gkeCK90vyK+gpAo51UVSqDlYEI=;
	h=To:Subject:From:Date:From;
	b=ZomDxQicHbO8Gahna34+8VEoeGIqnO6vjqhdv33ODETvo05pqT/+9745KLG6Aolys
	 +gfn1DtJm8pFzgYe50lCn0LtIeJKT/amrEvkSwAwGqoCzIZtloo3eUA0dj0ZExd/4d
	 ZIS7zSjju2nN+V29vGyBwv8EuRvm+e52217y/+TZhtjLxRdZ0wLz953ebP294P/M9E
	 GGD4YvjQg9EdED1Byap6dMRaO34e+c+bBBJtUWfW5qWlSNc+m4NSMEe7jwL1FxbTNE
	 fI2ZVBkkAeh0/LxWNXokunicGyfpfPPexKyIBCH7usv5p8s6uFre8W22473pOo0SXe
	 dLxbvm3ClflaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAF34C7EE29
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 19:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168590634585.3440.14697637637263827804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924454087a82587d885ff981792687596386a19607298e3f2fdcab9043b54b81
Date: Sun, 04 Jun 2023 19:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685906345
