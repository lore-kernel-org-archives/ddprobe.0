Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1686A3BD62A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775812054; cv=none; b=UPhIHzLnyvn+70cbUNSQZRau7TEb6CbW+/Bf7guimAVAU+dRIfqXwtEICg0f1ET8TSV4XWiYzUI0kWxAgDDmnuLQrwG9/GNKq+BQujY2RZfyy5UKuvkEbKmsTfm70EIyG7Td+4iqEBN6zMZvM+aDFrN/uOfjtGi7qzzJ4xYtVsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775812054; c=relaxed/simple;
	bh=zaOt201v1UD2O4RtUq4XSwcyPM9SL1oMkLHaBiif3uc=;
	h=To:Subject:From:Message-Id:Date; b=toJzY+K8y5iwgMCo//Fz3zkh2QN1RX19Ql/qK+1FTDfJb2ZlmqLYM2VA4hqcjaSPfKGRTPR7/LXRVzJyYwWtRCTUPAqVCnfbkRMApt7Yal8mzdbwW6Wi3h3F/yHJiRo0WdOzzfVY5RLhBaR1wKRD4Ns8JETTzmMV2klNUpIRmWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHVGUuPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHVGUuPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA424C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775812053;
	bh=zaOt201v1UD2O4RtUq4XSwcyPM9SL1oMkLHaBiif3uc=;
	h=To:Subject:From:Date:From;
	b=uHVGUuPpeSg8V4oqH4eOPxqvYbpHher8Z3vtCAaXKkuYFpw8Wl72bBm0+m07qxIz3
	 mOGrG8wOGwN9XdkzzjLQZQJIOl2egufLVoknAkCiicF4FM0LTJV3C2mSJmqLv/1IM2
	 zOLTKcrLSLISCyQBK3fk1SA8sk+rhGfYe/zDOue47z4QQlWhito+od46xSH/ciyPGl
	 qrRJihKng6gs4CdFXq7CZJL3us4bdcrxsFV1iGVOKgkFlB1OzCtSQ0L21uOUf8QDRk
	 SjPCpaq7dDGxksYJeoRn1aGm5c1C8KytiR+wkEU2NqWqs1zcwLGDfM9seuTV0Yszip
	 DRm9p09yyJNCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9A4E9905B
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581205368.22480.13969842920798328016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb38e564d5605af76b92e2c307cba452185fdf19d65ddd3fe6196e6a304a419e
Date: Fri, 10 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775812053
