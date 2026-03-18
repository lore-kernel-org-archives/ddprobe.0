Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13189364EA7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773834894; cv=none; b=FGHHvNGDQOKfa4YL4bsRFQzGh0Tf8ePbKICZ11u8Iiongk7KzEXRKkYwYyMb+u1Pat0TYWf3l+Wyi6W06E/tiTYMynxUh4AEz662ObZs9vToi8cRaPFg6WIAc8zWRWOfojb0LcDaQWK71xVC1uPAzKEVg7hre7lNL3+fYZZ1xag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773834894; c=relaxed/simple;
	bh=7nkiIezlnb6zZmFaj4kvDZ+g3LaY9RZwjPUCNBsllYU=;
	h=To:Subject:From:Message-Id:Date; b=VlmTA/54mqqhO4aH+rlfHf6OKgmyRTM6FWB1/3khk9QlyuFz0vstAFzPR3oi4gqIdhvhwtkjOGLr3RLWGVOYYo/WISn4BDVztux23+38UtJjP0TjTuRhiFFzQ+6WKTFZjHEJlJFX4L6Twl8ysx5FHC6ZeGMo146QcDCNUUsZKIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cP0ppNRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cP0ppNRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C89AC19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773834893;
	bh=7nkiIezlnb6zZmFaj4kvDZ+g3LaY9RZwjPUCNBsllYU=;
	h=To:Subject:From:Date:From;
	b=cP0ppNRmVduY6HV/nBI9Sj1DwWgZLVGRekKGpmCQESAEyNkgYT5+zekxoexgPe5Ob
	 igEqO4PlWbZlS1dWHPWs0DZ4/eYN6f+2WBvN2SMQM/Tm7YaL/bUORTHZ6F4aM40Rei
	 crV3APcs2YO4KamZhi6yz/svPUHOANRsEs8XUGz52kxAI2iljt0VMTGsIZuWomCNWt
	 RXEnNwzDV1/GGG2EOqmDKJ+m1WJx7OHnV7i82mupdkx7gHLxStwgpWYgYUYg+Kjj9b
	 hqSXouNCEmeeVa3A50VQGHneQdpd65cyxOeXtU0nrAJ0Qrv64zijiwvN+OwlyTyGZH
	 AYCfSP9H6kfpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E671103E166
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383489357.8797.6295714754253058911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 138c8e339428b6714b34be1cef8faf5fef6e5b603ff3540c348d8e9432cea02f
Date: Wed, 18 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773834893
