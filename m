Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4534222094
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743189594; cv=none; b=bsAobODeHedv8IcRsS6tXeHbWFhiylVxVpaWIl8CvbDJe7RNmBHOfNTFzHtML6HOV/4/2FgPtlAap3+6SXFop3uRBD0kHEgf6PzpEogKVTcDzlho6bCF9NxB1Co7GKMUQlv/5wxPF0Xtm2kK2sAR7/V1xKiQ7mhksyI9IKcOqjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743189594; c=relaxed/simple;
	bh=tzzk1pDFWhTUArjeXeysRjcmXunUa0iD66XPDu7IWVc=;
	h=To:Subject:From:Message-Id:Date; b=rl4iAx6gQHR5Bskc10QkWtQo5qSRCL1RVuR0Wu/OHJlPt7ySFmEr9puN50Yqi14+4ImB0yDSKKm42xN0W1RVU9nscmyqMbZItfjVE7gJW8HQjBINTVTQRXZY+BOQEVEpqewv3BBD94W/AkWSe8FLe1H8oF1uXSJfK9MZq1xzDPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxkHSLmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxkHSLmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4663C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743189593;
	bh=tzzk1pDFWhTUArjeXeysRjcmXunUa0iD66XPDu7IWVc=;
	h=To:Subject:From:Date:From;
	b=OxkHSLmTynZO78WyCJLerz/gteHVaLsn1ncqz0/K4lCCf1RRhytQ9M6/Gq0oeFoDn
	 tXsF7f2/oaw4FXauFWCskszcYOJ01GaL3RBTwqTENm7uiXHNy5qhw0Ly6xgRVsOc03
	 Blbo24Y3be/nb9iGxEwvRxjD3dioeiuZAaeEy6QavniazxeG2AOZUN8tAXxBKqPQJ2
	 adTZMQisXebVO+4nxD2yb5CyD6aqcgHDlgXkxy21uBoMMHKyXBBszcxoNKMAtDhx6N
	 kWbTQiQIWKqmx1LOldffpOTL2ctpfHAh+QeD3oZVHr9WCnQQ4q0IpVlgr2dehITf28
	 GdnQunZ8ZDs1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADA6C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318959362.10233.1650146806457133486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ab40a6df26fd9657edbef1325aeb67369eb64a9915463484ab9cbdb11e691b
Date: Fri, 28 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743189593
