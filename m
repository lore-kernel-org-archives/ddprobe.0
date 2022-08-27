Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62AF7C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CEDBC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661622652;
	bh=RR5yVbfBFzgzCJX1Se1vPAZJfFikENgxVTSIO0E5CXU=;
	h=To:Subject:From:Date:From;
	b=SLLc7mZ4YXiuii/tk1EjaO9mcSra9xCNEbLer8eqRPDc3uv/MGxGLNDGuDdn6fm9u
	 3VR1CMhv0M2w1h5UBiMztPibQV8CyIwlTcCvbfy2NyBEAHI59geyMa8Zk5uV6o39Qp
	 oMW9VRSkGGg3b62b3bp++RnIcTeSPXyvRzohU0Sl9YVHS726K06XMhyu66+misTcYE
	 UIbyb+iSHhHKGpKPzY7INJRGp1/3hwmeiABzdc/EGdBubqFDqBKTxh/GEyiBPHiO2B
	 fyi927PObAK97m+nWjyozKPOLrrirMFE2DXN1Ar5PInZdWfuvnuenoruIbY8412S0s
	 uiMUDTP614cJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE4DECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162265237.16352.17083071236881500847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874fd12aee9a5edb395fda36baae4d4a007cb2adbc5d6be1560fbadb9319e8a9
Date: Sat, 27 Aug 2022 17:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661622652
