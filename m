Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A0B4C75
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92F3EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671550287;
	bh=4Oyd17w3lI+EQvqZ1ZabnP7bXzhz/YwiZEyuWU8tP9g=;
	h=To:Subject:From:Date:From;
	b=eyQifIB/8XkgEUy5dgB4gQy5tAZUdPpf82xk00FPiHlpVyR/IW7YVh1MSqOV6OfIi
	 ykJWiS64ovFvXtfmpGCHSVEU5V/sBMD/5zSFKS9CShbFz4W7uy7VZuMIvWSyMkdTq3
	 ay2Ej05ZV2fSCA+GrPN1iw+A5vxiQ8FKZuPRCj9WnLaYDeqljg84Re+BdvXJOLNABF
	 pJf8UVBMjeYkldwxspiWdquTU6gbUnzY/EyDV6t1q6kgZbFGRzJHgraR1smsq90H4g
	 /1iVWdzyfv521eWAd+3ptkazZq3XM92u7zF23N1yIELWUkMRKhhKZ0vMWoU7qO6EaL
	 /uCsbNc2Zbj3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 745EDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155028746.8575.8035967965646359101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6c5f40a3889a8d27b1fd3d58d320bbbec7326fb850c74a712db37378d924c3
Date: Tue, 20 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671550287
