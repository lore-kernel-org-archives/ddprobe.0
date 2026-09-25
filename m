Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1164A1E03
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790341834; cv=none; b=TOT29xyf58HX57IaKU1OcgUO0AxeISt+UrBNCRP8oO/Nd8Bzn+f5kCJAhNFIDCQaCowgUGcfuGvjBfrK2Tryf1eShKRYQKOEKRqsNBgVVlvfVUcj26LosMDsdSLdjphYdsLGSIVXGPwlExRPfC/FlvHdlywprieDgxjkXPrnGko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790341834; c=relaxed/simple;
	bh=CGcXVWfNGwlS4+13648XqBMYa5a+SyMa/yA3cRJSfAc=;
	h=To:Subject:From:Message-Id:Date; b=YjEgMPOckCf+M2fKmvhPIcFzcD/n6p20pN5PbMbMP5kBsH5Z7kOY6RuGMeXEKlSVCfi4ww+VjD5JOqO070HqgsYRX4/rkdQ+zGODroF2fJNvqAN4mW9iW0Hq6oc2YrQdHr1MP0Vxcma6nXBJ4pXLV/GGPxtgcSSOEOsUvT648mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2Gn0nfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2Gn0nfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5ADC2BCF7
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790341833;
	bh=CGcXVWfNGwlS4+13648XqBMYa5a+SyMa/yA3cRJSfAc=;
	h=To:Subject:From:Date:From;
	b=b2Gn0nfuBnKDGA5V+gzztPkEBJjfkR9f2e5jY+0mWnB5dqR9f86NFHzd3/JrlJwGo
	 f//akegErlY1W5udpZyMY60OKP1oqAC6LA4jBFgx37lwfMd24LFGczpLy89ScC8wmz
	 XaA2J8vxHgb30gzt04F6U7TYMP1OBBsUym1tUd2mrUf49CnB+GoSbqpt1H/8qbtT4/
	 PV7II8Q1ZcrbPhLIDJ8bdeKpmKpxtjz7MUcJ+7JQwqtsIp664GQxkuXy74zyxLw/YG
	 YdemIYWdeA2ubYji1QSbqtlYrl/A5+ZqHFhQrcMNBu2mHfmL8aAJq6NAkOHjU1x+sa
	 kRJfyi5M7aKKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB606C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034183369.21811.5655625418939551464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e614040f586201638a459db66eb94fdba872ed62b4615a25a94e764d2d0fa68b
Date: Fri, 25 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790341833
