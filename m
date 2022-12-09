Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4897E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 860B4C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670553687;
	bh=wn+d2ZW8riRcQNqO8lxlnPAT/EQIOZvn7HNGZnL452o=;
	h=To:Subject:From:Date:From;
	b=OazN1l63I2fajejzq3Yf27hv4/bZvho3rpr4hxguGf+lqUB0Scitzjs6UB0XZC028
	 tHM6DL6CVAcb2p55JmGqntza5+Pgq6O8F/4XF9BAmx03QYt1pmOERLS2byJpGmmxPR
	 M4I+ZgPFSrHp4UT5jVFJ3cIcqS6aOvXV1RO06dKJWuWdTxihIM+a03a8iLqlfQEbnT
	 a7BIO0WfDUqHdD88v+argPD5BDeuow/DZyjHovxPGDJCrAXnOoccHDMddSqeF7EgZq
	 nxgs4yp2y79NG9iIp0B7fVqae28GvKmzkICp1fs2T/2Xtqg71NAIMLH/40TVo3WJSC
	 ylnyF9ooglK6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68BB4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055368742.6360.560009588292618710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afede7d8cfb09583369c472eeae0e12bdc534ab93720af0227d4fa5e9f0448c0
Date: Fri, 09 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670553687
