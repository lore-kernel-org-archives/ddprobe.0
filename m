Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5C94C81
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768497834; cv=none; b=WVbW6z+jUizYp6a/5m6iuzE/6z8an8V7HCs64kePa3UYmeuQVVcXqdfHjld58iy1BJl0wRAYvFaPLUF7bXFCMs6iuYwZNbF7lRyJpFa42ZBiYoT7+ohlI7PWDCDvBRpH5wJmzNZ0F8InilKEJbBKOhRl1j4IoqHien+FatQ+ISo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768497834; c=relaxed/simple;
	bh=iO5k+7ZjPzXa0LSbBvxANBQDNyPrJQNIbrxNZJpWb50=;
	h=To:Subject:From:Message-Id:Date; b=CDJ8Ky+9LsV0FJExLhFhWgdqC0U54SKjm1MkBvp/t1gC0cDiQC/ghzlqgUqgM/eg+AjcsmPSm60mElVb9qnE055MK9rwtBosfGnIsdipUuCINjCrXC3J7Xak0xk1gtQYr+uQyTa2dNalz0goP5lXI/AVJVbQu5StKlz6Z0C13Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVSP0IQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVSP0IQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7079C19423
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768497833;
	bh=iO5k+7ZjPzXa0LSbBvxANBQDNyPrJQNIbrxNZJpWb50=;
	h=To:Subject:From:Date:From;
	b=hVSP0IQY17jNkUL2egzfL9HuwNvrfISCHAWUUWanvuB6zmtosmPCdRy1wOZbK30BW
	 X4BtPAEN9Ce2b1XzK1upM/VcfyAQ+BNMOS0Y1prmjhAvYP7QHM/2gLJWUZavbkgHrk
	 cuBt8iChBZIqGdlWalN0OfLiKtVLRtxy8LRKt0k58FMbCKNIciF8BzkjTsVZIhpIzX
	 chIjhTwNaDMV6w/XgPIRPrFJehcfrFeuFBv6L/bjazDroAzjwcWTyO8GxX65ggTJ7g
	 uyXZZWFkoqu6Tukrrd/3Lq6ObTYEwGk9c9DspWsczXrPX13PVvcXk3ncb4F/NZMYZi
	 2xCJVmTFH4ylQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A2DD46600
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849783361.17233.10094111885394427654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294df140cd4e44ac1042ba2d3dc4d832ee49e69a29cb18dbc56cbb29c548f855
Date: Thu, 15 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768497833
