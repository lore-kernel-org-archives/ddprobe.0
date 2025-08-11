Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD7A22B8D5
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754952594; cv=none; b=Dr0Iqm94GyHnnXRhMpBc6Yf1Ctrg9B0EIKhUynu1M+e2icoAWx/+ck+oSLZNO6y2CoIJ8eWkx6154ryB3OeUboke0IoaoB5wv6CO5ysZtEceu9FAnynvGcFsdRXNyCQyBNPAueF6ucJPQ/eUQLRidiXYNP1Cp9XcZAX8QcpNITU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754952594; c=relaxed/simple;
	bh=sC+1iRGgmu55DgTaBEZ8yL2Jzc7eKk3Xyu1Yyaz1sn4=;
	h=To:Subject:From:Message-Id:Date; b=NNahI40gNBMQl9U5i1rnPYHcCesi+CbNIQ9i1ftg/lwOTAEtayAzzDg7dnIk2ijvP0Fb/jYswge4OXXYgbPAE5evp0Oilz2xsFVxegisrk0h5Ohp1OwDSsDphxNpjFlYWf+AxuIqFO+G8Ur3txVHX26YPxKCLXZQZoICgOPH1Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9mcyqPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9mcyqPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B689C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754952593;
	bh=sC+1iRGgmu55DgTaBEZ8yL2Jzc7eKk3Xyu1Yyaz1sn4=;
	h=To:Subject:From:Date:From;
	b=S9mcyqPePINKhQHer6zzGkVOWEUbFx74AtatiFyEUWvDto1i3AQuHfSXF8vSatZdK
	 IfpsxH0EehlsARx6f03Z7rTjK9JAA1MaD489mMA8AotT5FYmi25/nMrADkttsMqFjo
	 M5rSCckMUSpC4cGbEpUYHMhCYJAb8jyljA7cDWMCbtkoR/5nwlBwImsRAOBi9PKnI6
	 aqngWzu/lLT328zFhPTpKWFQ5m8HEjA0rAnyL8LWNQz5RAMi33jrpKht/v1kqm44sM
	 oSsISOk3ad9TRYSyM7aZ5lTSBqnR+dUxyUyVa4vmrVmhwLEtGHS+peZs+ofD1FUnUF
	 ISY8lbOC0GpBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF56CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495259357.19962.13953788235009782317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1299cea6ea23477b7b7a5f295518d80751331c2cd94cd00e372135c766fe33
Date: Mon, 11 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754952593
