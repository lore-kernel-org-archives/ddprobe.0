Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148832E7620
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756984794; cv=none; b=EpLBi5b4ZWJSdX5113gvjpWIcESi+D8Iq8YZPhdj6fv7EczpBCdkaavAHALlgdCuUBJaZhdmCr7bankM9d8RQyqWLr0QUQEUtmr5ACOy4h9E9cUtJXpqNzbIsoxxK8bzJ3JZSRW38M/Nxlc3eSyYllBaZCrvqf2d7JA0Prt/OjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756984794; c=relaxed/simple;
	bh=lVcv9LSzi+9VrRhKRaYh2iIxbstGwC2kfhJEHD7bJHo=;
	h=To:Subject:From:Message-Id:Date; b=E+bHgi3VCLrKoSzqrzujcoaFMB8a2jhX2etmAnm4Fj/FjwIb3eXhLEtF6qEJseHntHLCjPH9sR8q/TUatYNbvaWh+/lwOBsPbfoV8MtrWUmS+By0qmaFVIYdDF7hQpHjVeyJy0Qm9hvtRm9zwPKpVlEinFUIkayIfT1k44+KV8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyUWjfok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyUWjfok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB1FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756984793;
	bh=lVcv9LSzi+9VrRhKRaYh2iIxbstGwC2kfhJEHD7bJHo=;
	h=To:Subject:From:Date:From;
	b=AyUWjfokEjGSGZeltTap9JTQsiZMX/sbcvIlGf7vINc4UFZHE3L1vh8hL1CRGqL61
	 U6dA4Kxt6gym9DJ4+AWLaLiZKXx59vk9vF2fmzbqeCc4e9Bw+CMkoGU88kFnO06LB1
	 M3ZIMn2B5R2+AmF67Gio+17uY3ZoeNppk3mCxNSORJklaYfXQnPg9Fs376cPxSNCcm
	 HpU4vJ8omvycO0p6qrDd1pCjRd3gYU3KdkzgYX3xE2EzIll9OwrqBH1SpS2n/WBhhv
	 jjrexIxitpFBkY6/F/0Pv2biNjTGZkEmhgIjsKlAGGGFnQh8dmHBKX4yhHqFjZdnVf
	 KMLiQJsCj2l1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B3CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698479357.1628.17025688635944696283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ede5db751c7d26b645d1e9a299f0cb73ca6b78849aad002548be3ff37b151f2
Date: Thu, 04 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756984793
