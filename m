Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3C5287505
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755212993; cv=none; b=nTrN00QXqq/2sSPDwC3zjrrt3toNH6jb1zd+9aB44tTl/suIOmXYmijgGQ4DCVm/wvsWdtG6paOE8HTvIyapV3wyIb83Qqr3/ZXn+zGCInnHH7DGLZnoJj6+AcdZzmvr+0tRsj7EcZP/lcTn1AZnFbt0VKNxHssRPRid7t8yIfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755212993; c=relaxed/simple;
	bh=uNDO+Pyz9+njQjhcFx+sFeo0qMQjmTcvIT5TeWyClRI=;
	h=To:Subject:From:Message-Id:Date; b=bAQRgxIEQPNKLqu1mEy4bVkUSmR2us3q3jpm4O6EVT9r7L4RWs4TTIb/6uwwgCHDcwrTm2NffKPOHSLcYTlP26zeymH4MxcvL4Rba53yIjlP8y+w79GLGvM+FlHbYT0V79jWQpYYD1WqJWUkOcCItzGdicFmXCawO5L/6PBZ8VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTCIf84f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTCIf84f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96C9C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755212993;
	bh=uNDO+Pyz9+njQjhcFx+sFeo0qMQjmTcvIT5TeWyClRI=;
	h=To:Subject:From:Date:From;
	b=UTCIf84fCHW9wJZpKLuNTjK9L/m3/TmlY78UvBciZBbvK58oInSVdFApLHR1lPca4
	 cpzlGGK2vhbkES3VGkm1KAg3lPBLuK2hfhUbz1Sb6zT/WPcv9QZBobTzaQKMPl+s7g
	 /zCVsjtOzBJ/C/aek4C4DK4/0jnwHNayzPe1QVqOlDp7+l7gdYmJHxkm40nWCeTZh2
	 SexQ+JBbYQBWhCoh5dRslDHIiIlZAQ540AH/WCq2Z7lJ2gMs9fjX1CFYIe3qPbOoMh
	 MZgdOqrFTe0PDtw3Rb4IFLoAZaEeCxEEfe8MSl7etSQcTpkeGQ8gG+WP01YhO5XE6J
	 jmE9SzLrhA+VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92652CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521299359.26369.15425102458542583718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7322b82a03de17e187ff486b69d57ff71024aa43f78199b6dd6342b1ad28372
Date: Thu, 14 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755212993
