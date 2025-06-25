Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B812045B7
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750881594; cv=none; b=qj8QS3/dVCeJbFka95I7pWalFDOx6h4f9T98enshwX67NciBjrC3lMelHsspnsuNg+TxTAYjqwLu0xc2RnfkRX1M3Yb1QnDXRhcoeZWjPfn6Ybsjm6GS2cArZW/vE4twIqs7DJ+QHzG8daGPTF4i0+PiwMv1vR7Jk3Cmnvzqxmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750881594; c=relaxed/simple;
	bh=fH0OJVpWFP707spGkICJvvpJ/jUvnQ6DJhiJp7xdcpg=;
	h=To:Subject:From:Message-Id:Date; b=Prm13vBDBbqZAD29u0Fz541jDHyZB8WzRwxxLfeNczNRxPYSCf00eo8OI4WkD71OGE4ZK5pxpAYTkjD24UDblccUAnMgf3SPygxMD6er/hLodlN/dK4vKxFewxHZSxEjbloRLrv7pVwhrVlHaCHzAPizvAP9FrP5rkw7WLXTLr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzNOyvys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzNOyvys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E431C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750881593;
	bh=fH0OJVpWFP707spGkICJvvpJ/jUvnQ6DJhiJp7xdcpg=;
	h=To:Subject:From:Date:From;
	b=VzNOyvysOGgruoUcWy/jzKTWGg5daHs3WY+arPULM703u3Rp2OW/XQZCpQg6GdSA1
	 ygR5kl100GmQ72QnepFSS9yRDcAoWJYNTJ8ptxCGBBALff2G8I59uxHQzASVr6POx+
	 IEei5UqiXBh6il3XqSGl+8qQgI2gQ0eMgTFMpDhG6C5Y5DaxtheVoiBeTXnBsk4sCQ
	 vYfnUudeRI5LfNwDAeys5yuRX8VL+FpqPULIz3kTMmK8fVjR1YkU/gYea62QJomLdJ
	 v2+g93LzHZxXsclSDQq9iU8uLTfLEV8AUhzwhgpH80XVAKiVxKWi6Vr5u1VLhDl/Ti
	 gdayWtx887ANA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC42C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088159357.14107.3757065007770136961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c85fc5f13e4ef4d00ed50559291fa51a03b5af96f76fbf0c696bc1cb7aae6e
Date: Wed, 25 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750881593
