Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0EB3A0E85
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774909494; cv=none; b=Z+5ztS/CdFFVorn6xmTm8gpzmutw1ZogltU3U9ExM3u7OsNZoQHQ3oKwpGf9TBcMGBNMgT4juAGAzW9uBvzuW73scA1yunIFBYOxmwydRob5SGeJNjOArc6ntIK3Iwr9X3Nq2xnGJr7SKyiiSwhajuzLR3QluK+1H0PCr6p3qNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774909494; c=relaxed/simple;
	bh=IakkYTCna8aMB/2Dctq8i5JwZl7cEPrH3acAqUrqVTU=;
	h=To:Subject:From:Message-Id:Date; b=MiVWv9BzdiHX1i7ripIWZEOdu9hOaWB9f4T89DOHI7UKDx3TfbmbB2eXjkhXK65puvpZjr51dSJxNlb47objcsFOZDEyISDD25Zc8EgdCyw8Wekk4W+lNkDu0FViVNh/4wFOexqh5PUNUZtirIEGhOl8Zf/NqGOBbnCcHPr6o9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJANEWcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJANEWcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F175C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774909493;
	bh=IakkYTCna8aMB/2Dctq8i5JwZl7cEPrH3acAqUrqVTU=;
	h=To:Subject:From:Date:From;
	b=EJANEWcP0VCt461/Ob28Hh7H6F5ArzaNXLLUnn+R/GtcucDN6uTU3cSHEvcPmf6ID
	 lR2+XYpRuzDpjPrH5GmXds0QlzRTrzXX2zZCEM7XM3UJBGngdqEeQ2vzPtVo6ea7Vb
	 gfNkTdstYEbpqBxV5GIDWWEEAoyocbzN0GQkq0ZxGgVHx5+5kEZvqI4R6g9ifE32Pe
	 lT2t3sjTLOZYILXEZHjMvIlhWFjx068LF7f3UgMHfA9V9NR4UhelQHHymzcGDG6yjz
	 lh7zonxima5TlqqU00ri/UZZL/zCq/8LXPQDu1ImseAB3EfQA2CONNsEkbayN6l8nN
	 AG3C23pjaVbBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BAC1061B22
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490949358.18301.1592713257030372700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d72843e82b96eb9198a82282f9794ab3b2120a2b30031c1dc7e09cb2768bbf
Date: Mon, 30 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774909493
