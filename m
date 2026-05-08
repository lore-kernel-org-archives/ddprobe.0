Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C29415539A
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778202454; cv=none; b=NgWFloJZRUT6z3r/W7SO1gnEQKdc7B2YMHPH2h9pvForeY7b0ms4bNghcAwc8REjDoLCbGu/f8DPKDogtG356A5I5CPvK+Puuq5YYfsd8mATEljQ6a6KFKG2/peMuFsZvRZLNcrV9Ucsyn1AfwQDzR7ZHNuo+Ifm13tl0+GkvwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778202454; c=relaxed/simple;
	bh=lS7ynpoMwIjt+spidCWoJg6jag5VgeWrwNFlTz7aL1E=;
	h=To:Subject:From:Message-Id:Date; b=Mj5k17a9KuhOdkvcA2c8x9OHIj/Zz27wYVOicM+jyJjFERm8+KjBzDfglYpg7PP0tHCC+9wIz7lIPtWB8zl+l7ozgHs249IMdzVDU5diVP2bsq7F8W5RAuvf8WgTWiA6nl36R3PyS4g8UGsRd9glp2lsc6GHDKHYoG7BGxFGFyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew2tfRDk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew2tfRDk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2407C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778202453;
	bh=lS7ynpoMwIjt+spidCWoJg6jag5VgeWrwNFlTz7aL1E=;
	h=To:Subject:From:Date:From;
	b=Ew2tfRDkSYvmMGalI4MfBEDqluMbHJrkBsoyaQw+mw2WSmGDTgWaq8MVlROSdduB7
	 ycmDvojbXbo6xknzI/cKCmgwogGl6m4lpU2DGzSqrwQKcx8b0US8fPKUn+xV5C3bh/
	 frqfBVjaIV6P0iB7hxN4ZuQYvHCj3ShbYMCptkm+5y6vfPIwEHH1Tsy1HrBFmuuLt3
	 Dh3qASJplhQVbpF2g5GMxF/G4LIXj/vqHXJpmz4EwrSciPLBRkkOWxVBKzJw5fzNC+
	 +gHeeU9VRGVGbGTuZq/AFtQ4+M8Jq6Wge0THl8atfk8QW5RKmteP4de+xM7p/pOEup
	 Vk2SwrAZE+ABA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01E3CD343F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820245368.12494.7829635373169977121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac21364deb19845850d453d04b9031c5c715287811b2b28efa557f840f81df8
Date: Fri, 08 May 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778202453
