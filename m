Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256F51DE3DB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754859595; cv=none; b=Q0H43/ufHYPlJAPkECQL9GKGVEFZvV3OGwYnvW+kqH/FIhH55EIaaS1MGTS4gnVt2HjV8iWalmd9ZKJVtKgIeKoDDRCMSHZM42LiHxk/6tJ+nLPkUm7xb+MYa7F2b5zm2mbN+0yYWuioHWY/SQrO+r8rgI0Y4dXkvSRx79Mqw14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754859595; c=relaxed/simple;
	bh=WJvbIvhNZqVWqxtOWpf51i1qp50kxKMmNSAOtbqTAE4=;
	h=To:Subject:From:Message-Id:Date; b=CUzf72/FDY+aZLpLt8yb+Nt/K256gaf6FbTwg85QW+aa7vAZh+eNGauIAUrqkQUGg/gSPX9WUp9x5iFRQKF2pKqqKoEBrdoMXM7yg7e+tRP77YjTwaPtH4v+5eN8sWjJqTbGrZipsG/mueDqu5OKcsXF4gJHDPg+LCH6T8KH2Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5ZvBoS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5ZvBoS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6330C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754859593;
	bh=WJvbIvhNZqVWqxtOWpf51i1qp50kxKMmNSAOtbqTAE4=;
	h=To:Subject:From:Date:From;
	b=R5ZvBoS+OqAj5QromtbdLfwAi2Cf7rhHS4aR++E/JyVvKFcG6vRg17n4nOl/trMG/
	 iZ9kwGQyfjgYQfblB7UbmHZ5Y9tiiRozNOljD8WUXgO0bx3//hHTAgtswvy5eES2ro
	 /JJ75QTRhlRrCSlm4eRCImkIUY2c3/gOHfBWLySn3KDXV76kw3xkUb1z1k+ovTbVNC
	 mLKdlkbSk5BS5vwRUmTc7B1Udzy3Inc+rLQKDh6mTfF8+42TB3Kx8q1LiT2uJepmgc
	 lTA1t5vBMvt9ymOPx4bpfrPBoz8Gd6zAAPBQ2l4gWG9VuAEyENxr7BKQP3w3x+DMQx
	 loEY4MMM3h9vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CCC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485959357.15355.8479533392292637084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea706667209053c4c223d7ec00f84c65e3289dde786f9c7da858236d6904f57
Date: Sun, 10 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754859593
