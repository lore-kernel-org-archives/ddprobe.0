Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D1C17C3
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 03:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F84C433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 03:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674963785;
	bh=Q2sqzwZ1PY/r4790QUuCXo8Frc4V9lo44doXJCwgqlo=;
	h=To:Subject:From:Date:From;
	b=Ntl7tWP4H0D4YvYN8RiAVelUx2EvrqC97eljB2kdwPM9GEefqfsTIuxFj+w52mrXU
	 Yr/7V8ctw+hf7xaVLnspF/9l4L86FwayD18/U3+xBNB/ggVBnCpawaZM7R4VtzwJ1N
	 LQNR3cKx5LHAs8lXR7h/aemVsBMg6f8X2nALfHh/Exf0qUOikacj3fG2WAhOU/mB5k
	 eiSeITNsJrpDPOAaN/v3o6IWEN7t7sfC9vYGSsWRDaHmQE6R2U1Q2H314ZV1h9Jrm/
	 s0Tl51C/vGX1MBbIxqisDHPv0XHGQshIX5Fd8bcxWN+lPFS2aMCB1o//6BJPbY4iKn
	 YBgYLTYsLh4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B910EC05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 03:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167496378574.12182.16016187853245217275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9c89fcd8c465f5cbcc524041a1b047307cb8faffd5797174ff7cdcbd139b75
Date: Sun, 29 Jan 2023 03:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674963785
