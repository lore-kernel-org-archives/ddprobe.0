Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4715D215F42
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755371994; cv=none; b=OIpMTuwY8vNs2+bh37paLGJUyUYc6R0QpZum50Pr9ZrdK6suol2eS5PjjT6ACff04iew/3r36usSD3a+qoMXeurf8rd3f32jzgBqyExyIDitjz0OMeDt0UNM5qve5XzgA+d8G5easSr2QX74yd5rqsR2VmAAKpiZsHtMVzQYIvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755371994; c=relaxed/simple;
	bh=/XWo5SLKi+Qs7U/BNLKbAq2EAChP7vg/dZ3lWd/SH2w=;
	h=To:Subject:From:Message-Id:Date; b=TOAKut3rnksMD8Yz1dCMV0BfUMtPE4KL6VR39MrLf22HSZ3obad6DoHoyTf5zqJqWrfRao5bp/B3OgO2GwwbFoNyjv3n7WaNEvSYPc4z2mFN+hsU7qM7x6EAibIkvHlWI9c9hR1em6YgRlkuvrTI0oCgzIQ8LZKu2gv7l5fPGm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqXDzxpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqXDzxpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2840C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755371993;
	bh=/XWo5SLKi+Qs7U/BNLKbAq2EAChP7vg/dZ3lWd/SH2w=;
	h=To:Subject:From:Date:From;
	b=LqXDzxpuUMxfDKZwCRR/aFK/RTUipgEjKVq8SMxCOUU5T2RO6KF2icLHnkYguIv0e
	 7Fw0FSljlaE1+mavQm9oKKiOsgfN3p3Apl1oOElHkODUq2tmwDUQQ8ggacU69MSIPD
	 6EV1m5RzXBLJkHfUYumsgR27hwNPxapBsaoK1hxGnnEfJHhxmGysTXvpwPFYD5rWgH
	 5/VJ6E6xf/as/TXoxcvj3rOPby6GM9bs8mks6u7DN4U6C6hR9+ixpeew6f6OvoWx4i
	 ELPFExeu7usZZJOH1Smput8SaPzW3hJlUfXgif2NigU67GjZTq/oGocUAXllpVXkWJ
	 0CH/QGzKLrq3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926BACA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537199357.24055.8979554812685657340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8b9c5c2e52818118b52ebe01d6f71c3e9caa347ca2e84f1b09f59cf5c80f6b
Date: Sat, 16 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755371993
