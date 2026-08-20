Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5202C0274
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787259634; cv=none; b=aVae9dORjdOFTCrI32Uk7Hxk2z6qm34NzG3IcYyMscuzqWLj7RzXjHIKpqBASE29TwsLGbg1o6t6fTKJD7tHCRCUtNaaSM+0uIHh/3LjO90gF/vzerh8LosFEELuZtJ90uWDUWqyXOTKaSZ1RFRCEJQGTtO9NcCGujFc7PxWmjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787259634; c=relaxed/simple;
	bh=MpNur5lZugicllRYD/sjgG2Decer4x+LtDNDjB4er20=;
	h=To:Subject:From:Message-Id:Date; b=Xzk9YTRR7K9tPsm7jhzzM2GTVDu6jPq3+tnxnUUTyOXRhkJnZIJ16dYloelKK/ITqpcPaiS13eGirOF0zFGmmIpOmMf/Jhbh4/CY+quwd8RmDiz584+s3aTMoYZuJHd16DjTi5ww1gfLlOFiQTWfo55f5zhuS1ijuisXewiXo2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUayb8+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUayb8+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4BEDC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787259633;
	bh=MpNur5lZugicllRYD/sjgG2Decer4x+LtDNDjB4er20=;
	h=To:Subject:From:Date:From;
	b=rUayb8+okxQHsCdhecSvk2ta/Hf7Rdha1IdjRQXsBKT4fNvbghphPXBkgf3eTOn/W
	 jbcRnAMm2q1SctuZ/Ng8oawhe3AodCn+Nu3T1k4syrAUXRXXACvvE5/gu98l234HSo
	 Q8PQpiiGmqrIJV/3O5Xhfli38N7LjJ/p5Wbwxp+gv8YLy42G26v1Fhg4OUq13CEw4n
	 S0KSt3Q0uhw4g/+s8yrnh7Y0Qvt6GFBLV94P/CBX9kvx/VNCTon04p7L4Xa0S0iyq0
	 qH9painsgUgXhipXc2g4Higt8tidLwwZS7KGkq8sKcMOrq2d2CzfX3oGTtPhHvH+62
	 li97mzKx/BtfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EB1C5DF86
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725963374.8986.15686928714804299136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43a0e07b3978379a0bb71876ce67daad8e6dbe5d0d91ff655f67334cc05cfab
Date: Thu, 20 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787259633
