Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06918F77
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C231C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672840287;
	bh=YpYLHfM0+vCbUKahtDD6F1d2at50TAqOmkMITRVvCaw=;
	h=To:Subject:From:Date:From;
	b=HDK2IUbWGYGnQUQEFxokUStB9jqDVt50mxjCE9PEz6ESskoCwSgoxFvlf0YAyo+81
	 Ur7mGXV4KqrlJLWYdCCVsKsNH8Ag7tL/7x3jsZMPcOR5nVTBn2BP243f5KU1iOXYJ9
	 OtA43/xTv/NsvyD5TZjetmrUdlJ0CsD3H51xB1Wb/QRzc1jscCMIvFmKHgDsVPGNEo
	 aB0y4lpQtwYePCYrtlP2/Z9ByryNND0swCLtlxVokG27ENJ6W/3yJW9A5bUCDF58Wo
	 CbXuPMBDLAJifat9g4TJHFY/f0kaaC+ouQPq4YvabZFHe6/HUbcDNi7Fp41pMdJ2Hr
	 1zGWYDlk5g0Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64290C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284028740.14470.5153866276331119952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb75fde383b6d106e62e77ea03dac8897c78210187cd39f08ff3521a92fcf82
Date: Wed, 04 Jan 2023 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672840287
