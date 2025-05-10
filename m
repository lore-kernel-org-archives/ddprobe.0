Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464FCB660
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746912594; cv=none; b=XnxAOURnfpUHZyr95rMHQ2bJsLoRUfBk6ynXSVjrbrSgwyOGcX70rCNCzm9vf8brpnQBTExueO7MljdglpgYqw+YWaFoZOCAcgeOWyq0NmKKPkAwhxlUmHpb9pFkhkLfkUIfTFE+qJZT8d4zmyfCFA2e5lSQUltGnCzDNRFDY+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746912594; c=relaxed/simple;
	bh=4CTAl/WoBW6iWov3b/IG3v5w5DRAFkUHKXfZ+n3vrcY=;
	h=To:Subject:From:Message-Id:Date; b=mPpyi4BYhx1t1DZKKzuaMBE/tjjUbBn17RijIVIcTaEt6N763k9eW+hUjn5dcxLczUKytjrv2ns9G8WnOqXcqkKdcnS3lwLovYtSNqC+ZeM3xsJ0tEmUlh+a9sWkflWLaSO5IiIQOoA/ZSRyhuZL7VeJAzGy77wa8zUy8vVD+9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhO48BX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhO48BX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A377DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746912593;
	bh=4CTAl/WoBW6iWov3b/IG3v5w5DRAFkUHKXfZ+n3vrcY=;
	h=To:Subject:From:Date:From;
	b=qhO48BX1xt1rTApAV/o0oMl3tC/mTtjcSCiIknojF5q1SQd4Z70NUJutxzLVIoQdG
	 blQ+B+UthBN7mM0k0cikrag7ZxVMoHdxHSBq4SGI382FNsZ6+PeibjTwmQ72K0Q/mS
	 X9ey4L4JB4VAvCMccLobDqkP2TTDdu3dqmH4lJAbLAEMrjQRakmeGefMg+VrGEWsat
	 bpe1l1UF1XrpdkJrloP1bnqtVPVcKb/NOtdLRruFAX/zVgOEfFXmkmvaqIOPpOmIi+
	 c6VXGBUpFNXthM+IBR/eaR4ixiHSjLEumiJo2S4HCBIfaWuVsAu97vJoydQnbF+VUt
	 1+tUUrRwPN5PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93643C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691259359.19700.18155182113690362029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61cd0f510ca68cb16ec335b72ff230b48287b65af8d51738bcd87d075cdc71ff
Date: Sat, 10 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746912593
