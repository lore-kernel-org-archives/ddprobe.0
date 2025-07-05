Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DE81898F8
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751723394; cv=none; b=iBDJTCPRtJgUjaM04enZxQkahxgKUmlPVVMAtgjyDXn4gV0eXGy/obasG2FrKKZOKXq8etp8bH9YYcffK1bljGVs8vRt1bdHTtAfWhc5vYqY7rafjjv6GJXbhT/HoYiYolGoZxSqiupvEo38ax3ITLcMGkgxvzl2L8ERuq1V/RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751723394; c=relaxed/simple;
	bh=OIxOSYppSEMVR6T3WgDjQRBu8ha+Cv8WDq1yneuP7lY=;
	h=To:Subject:From:Message-Id:Date; b=ScX/GQ7UMr2uqNNe0uQGO5X7tjnj7UzkzEfjIggk9mCHCLaQCLGDud7XU1j8cbkgCYk1NABL+hX17/g2dBh20Du0ikx0xx0JgtIaBnyX+r52b9dG3vXpQeyRB88BgHB+1dZvaeQAreDE/Tx5Oo4RC8/eWun2Kr+KMHS1qHdQICE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNHqKj4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNHqKj4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C04C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751723393;
	bh=OIxOSYppSEMVR6T3WgDjQRBu8ha+Cv8WDq1yneuP7lY=;
	h=To:Subject:From:Date:From;
	b=PNHqKj4dIOzTwq23li7g+x8LLTyjDM6cAuW79QPU2vvfCRyLluFuuo2ERY2eHy2ks
	 YrdcbtWI/XEvo1mCKPO44a0S/KDv5m6VQd8+5x1511DE+vTotSR+l49jAba+7raWyc
	 pmnfipsNufqWqRZ6KidDmbg4WF0uW4TLDGBZuzJNIpOzQHuuC2DUBWRGUzZxs/jGLZ
	 u3D4bfcowPSOBbLPyIlT9hYcYcKJTG11fepuljsqkBOmAsXrGPVz6SKnRIAuWpWVJd
	 RO3UlNri1OlpwiCISNRTck5aYL4l12d3ckNcJ+it5HM5TrkOaNPytTYUQ5mLsxTC41
	 NoXyHw7UJP1dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9803CC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172339357.8269.10095741812039744056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab806ad089c5f0ff866274af459f69d55c74083a6543dca695e7b640b5d29082
Date: Sat, 05 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751723393
