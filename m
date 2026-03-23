Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079C3CA52
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774224294; cv=none; b=p9kredC1xKnCyP/kGFXCPBSfE90QjNWkTkRfWBtHiffS/klofGfG+DvfMh9BQ825Y8vL2AkpOr8GuiCO3lJZ0TGD5llMGr6qtjQPx9/ZwH8LxG1wjnBRiTtO18PoJp9774as1cZjlo1g8cY6y1FPrpU9PaobstQpdfpvvnW3Xf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774224294; c=relaxed/simple;
	bh=cTJwGOJna0PwvV/NrmNlrZEbo8jK7d+CsRbGlxoCU7o=;
	h=To:Subject:From:Message-Id:Date; b=B2PDH6p2+BReeDCTpCLsJXRItuLU4u5W3Qv21kLeSvUwhJkJeyS1096C1AqjrReBELmuADQVRObKP7k9k5zhEiG1c0W/c7c5I+7nlvrTqEUrphK05IMITk/6ceQ21r3QxBIv6p1ljQJT4iZBNAMEeiwrZQ4QJqtDE9j8r/Q7Eec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qt3Ynjr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qt3Ynjr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4597C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774224293;
	bh=cTJwGOJna0PwvV/NrmNlrZEbo8jK7d+CsRbGlxoCU7o=;
	h=To:Subject:From:Date:From;
	b=qt3Ynjr3pKrAKz/8mWERL4Fl87ziWsbJbVo+6jzXtTQk37h2SDUQDoXRF5Eym74xh
	 Nq/NZrztAUruaOmPlS28pN8wGxYQA6Z3bLlBYixcpF2VumuCbyRl2AUD6V/F3k5zHf
	 UxPb+U4+9OWsBeUV+hvFm4SEd1Kse2R50eQx9kHgFQEB7J9VpG4SWi4HRfEB4kpcSz
	 KuMSGT4i5w04sVUkZL1nsABbRz5mZdKI62zd7hSVq1NkkaS4f/Hz5+V1hgMD3COLe2
	 IPDenMnLLGOd2ry2S8u5CLijuzdOrK/gf5Tr9Mh+TIWoVSFiaaS76rAf6iWYFM3c22
	 VUw8YVWwJt+IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93466D58CA3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422429359.22299.3308865522773424861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b11352235e4ee7cced032396dabd4fcfe651b36257b7bbf25d780c0bb897ff
Date: Mon, 23 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774224293
