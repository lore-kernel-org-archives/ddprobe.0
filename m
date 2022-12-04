Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD66315A6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7330AC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670127054;
	bh=To58G3ib9/HU81BDq9eLcmfN42IYmrdGnm5HJ3mxXRk=;
	h=To:Subject:From:Date:From;
	b=kl3zd7n3EAHc6J7BCf+wM4qadvOIc0Ld4Ssa+tJADJ6wAvhjLpbZnXgcJ1jWopELz
	 Tv8HTF7m+dqqXUCwbnkGkjlSTG654uCfS2E5BGuY4rO0ACasxDTeKiAMekUnzw0/Ed
	 HvBVr5xyzW3uckOQUclf46pCXCa83/GiQEFyKpzuay3UZWb4ax+YTDSbFBWkynx9TU
	 ifuO3DluU9vYj5bUIOo1A8RyP0ukpnDkbqs/vvSDb7yUTalVzrAaGrvnszgjhXaAsT
	 /xJk+vnj1ofxiTrFSBRd4KUyAPimx+SLHOdsOnv7bHzf1h3I6aBO5qvvQlxhJg40IU
	 qKbjGuuSzbuFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56609C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167012705434.28120.4475057390280913233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6722d745ab1ab2f5aa775607d97f70e471707a51a0eeeb49001ef68055ee2388
Date: Sun, 04 Dec 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670127054
