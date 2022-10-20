Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38F75C96
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A34C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666288253;
	bh=b27EkLWKsMbDBRZRjVix/KTRV5nC0F8p+LDMk2k42xI=;
	h=To:Subject:From:Date:From;
	b=OeeCEfA73K4KN7AKrEKcGHKt1TXHDGlojo3XbPks17AXLeZ2bdl3S4vdBi40mCbIh
	 tzWdLpxUOyyD5QJMnfGgm+5DVwUKyd3dWg5iauTCTPcbjTRbeIPxisyHiQ2CQqLsoH
	 Yn3F3xRc+4jWMflvyTPJlMSlJp7PxysEr3p5BCO3aFYiz0vorMxgx90Tztm3kIH8o6
	 Zpo/3vJV7A28BPQ3oPYnoMsl0fOirWjL2dBoW1SJoayNNOE3lxPi8RdLsGMVi+H6tQ
	 9sm0X2suPNUU+kWNmkhdDE3bCB6DArB+5kEABVzgmXfb/t137f31J3OEqU2xSj/eGF
	 H8U63srLH8y8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D49C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166628825335.6602.6263345401441746477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc38039707abfeec291c6aa4e8530b7429082eb925ee21d2eac2bec8ef04a525
Date: Thu, 20 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666288253
