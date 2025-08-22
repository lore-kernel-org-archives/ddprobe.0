Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF42D3375B0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755872393; cv=none; b=bnITFyMKa3i9qczuk8zvgXYwk6K1g/QpmxKTz9IZc4IAk3hk4OpdRN9Nrk9sq1uLfT/XPUBQ7JXmqv9rNSL3CNuJyC1n3LN9GOTzj6h443aWKBRQlHReqGjml+ioDVeVBVYnZmZLeFqdfDrlnv9gCnbTecMSr8yVaR1KesnDIgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755872393; c=relaxed/simple;
	bh=tlCM92cpo8AB2P08VCgWzHJMhjgkkKSCna1KSpF5oVs=;
	h=To:Subject:From:Message-Id:Date; b=Giv2IZU2ujo9A+o0e8MjaLHEOk1dTrublk8+o3YVGUnrud9j7Zz1qssZvNOZ5GhbB7nALXOWMh97f5z9e9LnwJw+rbrUGFWb5HRI07Jo8GOeOjQPke0OH62CTjAy50DFFU1Iot58SGqF5hKVEztcEF0SsuCdihKF5CZ6xPlRSY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bh34WCXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bh34WCXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FF6C116C6
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755872393;
	bh=tlCM92cpo8AB2P08VCgWzHJMhjgkkKSCna1KSpF5oVs=;
	h=To:Subject:From:Date:From;
	b=bh34WCXC3fvHzhLTGxgwabbduvntJSszVMAqGWQ5V1cj+0G9wce+/yjXBdaC13uw7
	 Q3UptUWFwUefV2EnyEprnHUtb8Fs4s/f+daM1m7cic07eKx19AF9z1dX8Yts+AV84Q
	 h1r6r2n/SNG3YuMW57WeKwUGkRGHo4G3HHvgvVtjGaDwnm2tZZhksJj6VZq3ki6pLj
	 6xlUaPYOdDjp4EABi5AQYyva82NcNfOdg7EuImLEl1yhVwCmFfI+wWhxrQOn21VHm+
	 4nF6WpT4Xf19rrxYiyZ0MPAA7nbqUwPBM7UhqZsRxpn+8KHxQ0szHdJf1uLKOPFpU7
	 98yfWKqgB53ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF56CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587239358.9480.10934351700965952744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e856ae11625b71b91ad386ae7c35b6c7a0d037d53fb98a79a044b44de5d4d407
Date: Fri, 22 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755872393
