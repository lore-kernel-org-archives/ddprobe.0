Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C400379982
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771886094; cv=none; b=t7vkXd3MrP4vQdvjfpc6EQlHCdvA3PxEha12Skm0is81j8urZvKYKqAYx+HRu5UdggMO/cLXj4FFX7Y/cnkJk+l+IntV6l66WHjuZuhv75gXgKOAbgTMvJMe5c/2f4Vfo5SJTvJ+EoFDOksC3T51S3DxtKXU1XjyAQAy9srBqO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771886094; c=relaxed/simple;
	bh=YK34rWJ8rY6tkhc0h79iLMxuAy95yoFECH+JXYWKtPo=;
	h=To:Subject:From:Message-Id:Date; b=JAY3ZtvjVt24o8Zt/7y1QjB/82sbffFxo58ZwL1IasMpfYC6jkkFPKLGTgBz6gDjPgFYs7O6pRl7+f8sX00vYwn/eMkGBOZ3g67dFQopxCMpmfuFSPpcmppVi7sRFk/EwLgsG/rl75x3UmvB6+84eUufgrYmWg53BTr+CnMdmec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqXYo86N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqXYo86N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40DBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771886093;
	bh=YK34rWJ8rY6tkhc0h79iLMxuAy95yoFECH+JXYWKtPo=;
	h=To:Subject:From:Date:From;
	b=rqXYo86NYkIR7kdZzFEn5iUFwLSJpaolpNJh6gcL0RhmCCeSq5jxB5M3ncLpDJWgc
	 iq7qWWUMb7Tm8PFSDcGr+BEMJN4c9pE6mQx4Cvbl2fuVxhnzej0AyCOGAPpjAUoMto
	 H+RDj3h/qDeDNDOabFNN1oZ+9avtMtRXRzaYMqigfWiG7tKat6L1yXBFrQrJX2nm1u
	 i/wuheXb+SyUIHoaj26gsTj4lFugM6bhZDrC7Ywg1aCsHI9P/T+gjyr6Bva528Tj7g
	 1rc34va93jnIgvAqTslXPcLVSNOJ6i1P92h3w4Wdbj7/2VxZtAU8xHn8/2zD3q/q2U
	 RLZ9Vj88IXD/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1653EEC2A6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188609364.4670.2660832652646421236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8361bd6ae5b4cc9a480ba57da3d277946156b06274e1921726e9e2454bdf21
Date: Mon, 23 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771886093
