Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103002D837B
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758176995; cv=none; b=U/decbWfqWQi/xhdA0xQr4I40tBru1B+R3fT3G/Kl+fWl0CC7O4w9UtAdWMAPDMm4lF8PeJcvidpfTA/4yWhlOHFA9+9dfGWn1tHkObsCbCe7xy4VjhNBPF+jHXw/Y+hqBR/hgTTyipYc9ZI4olXHRbKHI0X2S+ucvX+/AX/mf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758176995; c=relaxed/simple;
	bh=HGwOWm//EPFk4jqOCCO8aR4UKt7y1Vkn4f5gtFUMEkY=;
	h=To:Subject:From:Message-Id:Date; b=hS17aQUE6vrRfw4g0lGSu24TkOjuZ2lWqMVvU9x7Ton6rTovp2GDXD9LNDtzxePopan/r3FK8Gc8vJ+8IWA5oo1ASZm/i2bYsLtGyews8CpiPfIp31dcuAY+NGJLGRfOopsUyrrA529hpihaJ00vU3sPFwTLLC6J4Wu134Fyi0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GewY4Qtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GewY4Qtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CDAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758176993;
	bh=HGwOWm//EPFk4jqOCCO8aR4UKt7y1Vkn4f5gtFUMEkY=;
	h=To:Subject:From:Date:From;
	b=GewY4QtxKvCGN1JX8Pf9w1FoQZxOmzUVSw5GoflCfUov55BkMD3q3Dx/uM+S5JQ4p
	 YMquKlUIyCBEQJeZgVGryx68ORtyx6O/BPkTf57ReRpuGbtr1D/AC2hRd2AHoa5JsN
	 rx/s3XpbtekzI/1RwmsfY8euMoXIsaC1hJnBgAHCLVcMJzk7hm/egxTjUHJKMi+9Ru
	 fIKzyHSJaRc2fRpGZnGMcXlQUyH7e7AKCWxPzQBNTnifBgSWJp923jXy/1fapGGzGG
	 zXUZFoRvpieapmkL5ah6lAcmOTArnqLRA05vVSn2vYtkLjJ/I32OHaNoDSdzcuFH8A
	 8wxKB68puBOaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9132DCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817699358.2005.6491755423357460988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92253f508e4cf3810ed2fa149267b6404e81079dc1333114dcf9f6a2213093ce
Date: Thu, 18 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758176993
