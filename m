Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5AF199A1
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiPMgqwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81634C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703368696;
	bh=g/9KkGe0ozse58BZU0flsfUxQegT9TgAbrDfE7V4LiI=;
	h=To:Subject:From:Date:From;
	b=WiPMgqwXOPNosTNzFPPla/7ZxLwXVrdNfcD7Scj0umo2ciuehrWrxp4Ey1PXXAjLH
	 8yUSqUJCDZMWwG5Jlwe7ALljaUtg6/H7oyOLatHNP0I11jormeSbhnyHXUOPsmsa7s
	 JM4ZaXBrlbAe1qsOFsqjaPljgkrf1lngFhk0dCJW21DM/z3Lgx3265ypm6riMmMfvK
	 Qf1bR/9WInbVvZ39SU3YC1/coBGTug4NtZX9l975f9dX6i6ICmCwqIdiEHNe6JoAgv
	 fY71irREZyMiipetf/tddOD4kSK+IVX32yooJxuI6rLyy5VBjUiPLNWgYFA5P7qJHI
	 oFajPmTzaIXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633DDC3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170336869638.18339.15834510023389444527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9853085b4fd744dbaae87f785a3ca9e0cca848bb86a2d9080c9d508b259db5dc
Date: Sat, 23 Dec 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703368696
