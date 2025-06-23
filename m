Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0381C84D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750699194; cv=none; b=B0G9bDmjkcsOEFycD4fgWqEd9rO6KzQvR+hR+y3wzLoGil0FIkv6Wi5SnJ5KpGq0rCEuSEEm+QE2g17HnmTK5g6fPdjJb+Xr78kJYNEAp3EIgfwJHAu6FhyCHYsN836b/Wck4FVC/g6nuDAMGXvUSchTK6wNBOPXY4X2THrh0os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750699194; c=relaxed/simple;
	bh=Q7NAnEK8VRYCBzAieNW/63MCoH7Feq9Un8XQcby7SSs=;
	h=To:Subject:From:Message-Id:Date; b=N4MMuiKnm1mS2cLl3Knx3+dfSqHSNlvivHBXn1NWOc6gxRIWsUHLVWifccO7qumCDm7v38yYUAX/n8QKfGGwKo3GT2AwZUd9bM4StAse+qMOxh5DKZ2YtqvReX8QPYBQeJxeLP4xa+46feE40ODXQRev7YzkV5z+7IeXFwWZcwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0q2i6hJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0q2i6hJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A595AC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750699193;
	bh=Q7NAnEK8VRYCBzAieNW/63MCoH7Feq9Un8XQcby7SSs=;
	h=To:Subject:From:Date:From;
	b=W0q2i6hJELAhryg5Lnvr3hW2TXr8NOuL6Jky+IxMvt0Ekl+fgYjtcW2kZI5DOhwJu
	 1jpfALLEZUWj+qtUy6I5WpMnl586fcl3/8zNMCrub/7gfkLN0MKu+gTXPXhuwZ1ukY
	 28NJSDC1icvlQlKcTlQm4aRbdAqvKUazxPab1PborEpUMhLaWOWfh5Cdw9Zs7vXsun
	 fOi/H3ewFuPc197D3X3qzRHB/oauUZxBXQaropHtFyRCD7a4pSF+BSB14d/ypVaYT2
	 wdr3b3r52DLeKwtR0Rtou1r249WxfXuq2o+xaQBLyPcxZucRWpHx9HTPPymxX6g5Jv
	 2meWlUa9QAc5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA1C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069919358.23348.5203188010514258264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e72aa84440053e319012a43faeb8050d94db23af28ab1f153531541c8b7a5c
Date: Mon, 23 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750699193
