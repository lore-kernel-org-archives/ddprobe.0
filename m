Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBDF10E6
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722998154; cv=none; b=rL7ct0UWESYEv05VcC/AgplgDCzeTtTWxFCT/xs1fmHComaqILiCjCdtL4bxNa8XeJSJYFD3DyYvPUwbWjrXoM9cD4hJVbQntanOsk16I2r1U4jbUMvbl5tgGCJi/cEBkYl86Vl9WHcR+r0Uql5HChyxNBWs0TMDO+edIaks/34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722998154; c=relaxed/simple;
	bh=Mh2o8m5HjG9Uu2jnhINKzfDXdoJ3D9pOr21Pv3qm97g=;
	h=To:Subject:From:Message-Id:Date; b=BfH1RxtryC0uUEg/oUf2FM559HMw8AaeG1/GiD5INcFBUGOGC7HnSB5agGL9YdwLbdfaNLP5R3FDLXdtM2c5bhUDpfKg0erNdkl5jTPlsOYMCHKnPXE2Shfv+2EUUGMShnJExlUb5Y1M5dAip5bxewqU0+c5IbzEncEdZklt5j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPUivWr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPUivWr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B65C4AF0D
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722998153;
	bh=Mh2o8m5HjG9Uu2jnhINKzfDXdoJ3D9pOr21Pv3qm97g=;
	h=To:Subject:From:Date:From;
	b=JPUivWr/BhRfGVYJqZS+mU69LNSXpFxeXzpMh7e7pN8jIj5DP39Ls4CwZpjURpqrd
	 YVpHAm7/KOEZj2L8K0SFGrNu8420WMZ414BY/CHa5PAjCcBRGq9A55cIELe/FnbJPu
	 AFI1sg/+OsRmaXeHMhnZTE6Bs6QR8X3tqWLmL8B52gOJcs1l1LQY0nclQgcNJZfLfQ
	 1lij5cPyacDtVC3xGdIERjyz7BL4N6Uawud8Phw5UAwNWxnkfpPrpunLkETRU1Wxcj
	 ucDn3Kwn1Iz3tafvC/TEB6f1Bxwz3QR9IScvAn90lQuc2OSEo5grUUWDpcTtXrILYy
	 Qy6BsiV/hSgQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BECC49EA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172299815359.6772.9752738140291780830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123731bc3cf75d6814bf223e5576e502e7e130289a4d4471bc0d46ddec53d3cd
Date: Wed, 07 Aug 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722998153
