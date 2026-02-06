Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C202FD66D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770408834; cv=none; b=IZknUojbkj/E6Lq3/5gGI/XEn2Iq2hMFoJdq1oqIXEW7sF8nTFnIUwFMLPCQlqJAZwJkHFH65b6HJC5M4/1SaR3KreiROO8MjRVFJs9KbRQSSP54jp4bCpp9EHqfcrLC55+ySeioyyQD8T3RJenZzBgx3RGFOFVLvQxbkL2v0kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770408834; c=relaxed/simple;
	bh=b8wgrDegZM/X+8ERHf/w22VSOarn+/+umphput+d6OI=;
	h=To:Subject:From:Message-Id:Date; b=tK4oay+j4Ai2sLfzwPjYPONNLkmH5xR5IQOEl+h1oWLWsa/59ka76ir+SgEz9RgvjOV9cPD3DF/V6w05CeQDsBbU1Ssnbv+AIA2by+zbXzUNzkffaII0B4vufOjvnX9mie4cVK3vucp7uFQkyEAcKTU48TxCmviaWn1C2gg1VOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dh4MKZ6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dh4MKZ6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE32DC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770408833;
	bh=b8wgrDegZM/X+8ERHf/w22VSOarn+/+umphput+d6OI=;
	h=To:Subject:From:Date:From;
	b=Dh4MKZ6wm1V3p6CURCdlJBrqLqMr7fR+TIzXg7xlGx5zOM3wuvvZ+RvwwctxIpwCp
	 UYL+SKFrjMwX/jPT8HfsHWLY0TF6k3hvKb6dZHddH0vF8l+oL/wbxxiiGeDVHzRwGM
	 fNsSB1VxjK0lYarLMldx2M2papmfHlBZh0RDb8sRYaIBdd6VcmTr/kv693q0kBdaMW
	 ZB2LXIlo96KAwnttZFjYEfIkbOXA9jTBPMxoa9FM0cnUmV409CxIByoUezLKyD2vZR
	 RE/RNNJMXWG4lRxpvqLxkWWVeIhk/pTHhNBJsaTjSlP4tlHbrFLvQkNc4UWwRtOU0u
	 gNm7rRHfaga3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9863BEE6B4D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040883361.30112.15913849329815488847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb0b69563977e490c8aa96cf7665440e0130e3e4c1f7a725913296f836dd42d
Date: Fri, 06 Feb 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770408833
