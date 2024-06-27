Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516BA17836E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719494663; cv=none; b=ojRuqUC7IK93SplO2S2K9eYTecSh+fJzDH5LxLbdFDJav4jXDPAKEO0aGlmabUr0QHdmM0NW2n7EsBr8LeYVk1HIMcHrZkNQPfY2TCUf7+f8KR2iVtmxsIEG/JSl6LQj3doIsAkciT7hl5N0RmFb6uOH5m7fg+GNsQ92aY1q3hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719494663; c=relaxed/simple;
	bh=N8BHBwzMDKgTBTpwRiMy89lCG2yEpzv0X+XmveKpmpo=;
	h=To:Subject:From:Message-Id:Date; b=cJ9IU/nbu/Sr8Lz63BNrOF5N8RK7kVkZ8FLDsYB3uyyGTQ2kxmmoUjFKyP/k6F0/oouclMwdcpVT+Zm+ooBu1hZfbAQu4Ms5peNfwQhXGhgw5mHvNGKDTUEPNOF3wvdemc1X7a32h/yKGf3DnCIyiTnFihqcFcGVB9ugiR/eqLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4D3XOjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4D3XOjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB75CC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719494662;
	bh=N8BHBwzMDKgTBTpwRiMy89lCG2yEpzv0X+XmveKpmpo=;
	h=To:Subject:From:Date:From;
	b=r4D3XOjYi/CzAdZBbZKEff0A+AjKln+MRXGW/6eKguJdMuLyVwYqakSHwvMcYjslm
	 UnYg6v9EEjar5gvgAFEGDHnbeLfqmHCoFVE8Ophw00SrY2SdGTMHWEsH96Dt2czGvk
	 vWjRSm35M2wUnGzmIgs9hE401bzky03coBqwvUICsURgUnOsHn2ai7+3cWkzx7ugIN
	 ol1BRX2V8sqh4awkkqrWKNjuIyCTVe7sXymBW9Vs+8Rt2x7bEBXbh+PdUeBHODKaeb
	 0oZGl2YrhblAsAsLsJ2hCAk1Kk1YXG/ROv20lMnUBkoqjNnJqYQcd7A7cMn/D/yBZx
	 8G09lB8tUab7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4505C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949466276.31432.3425558526402788690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6316d75ebfc83d6c2dffea1a6c5b6badbcdc3cb8bcda6f2c6554d38365df3de2
Date: Thu, 27 Jun 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719494662
