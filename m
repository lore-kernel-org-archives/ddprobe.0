Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C4613A40C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721992554; cv=none; b=t+D4dPv8iKl1/8y68F2SQcClBsgWxs0gHCR8JqrivPNhxeXDV7z4nSyOegqlckZk1Qy3kYZMvPWsENR9lJPw9CdEEaV5SbItNYeixiNTA89T2gr53JdGlWqrKq1+LOZ2jlPeRa0JbrkESw2qqrm89LY15g9usASt8sPYXMzZfBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721992554; c=relaxed/simple;
	bh=ftkJRLgQdCP/d6bVc49sueJTRz1FR5wAir8SYz6iDPM=;
	h=To:Subject:From:Message-Id:Date; b=Tu5Er6bvYPUK6KnX8XT5+/cs64dzYn+kLijHLDjj/5INzQJQFYWHmgYK6mRT5cfOUXSEEk9XnT7wkFfkLtZJUFq70DIqnkF8dEXjpYt0QW78vOkNKS/+kBXQiWAwvGPwabMI8WRWnx9PKWPo5AtBEkmSZDWLqN8Dq21RyaOo4Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3vPAm2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3vPAm2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26B5C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721992553;
	bh=ftkJRLgQdCP/d6bVc49sueJTRz1FR5wAir8SYz6iDPM=;
	h=To:Subject:From:Date:From;
	b=C3vPAm2uEq2VJpAfGtNHhPP4d2mNmc3lHO++wwv2+ffSSQ6fktx5NhaAum6ZMh2by
	 iJmVspW1IEiGYPwUyzdhqnU3SiKdJBJxaVMx3q51omowYyxefhVcA4aua9TCXux0p4
	 IOmxHk913uOh11VIJwSB3EqGruYVTFBfp1prT9VydTcm84HwoQiq+YKp+SenGY1Wf5
	 5cfJVkocv1w1FA7cYcNCQwgeUJh5XpRznPGJB5d/DLRQPJp/QwhpOh2viqR8NgwRgS
	 k9lwiJhJteC6jq5Y6zdR1bXYSdMKRvqg5Oqtn81V9S4LoPNoGrdGm/R5yWuTssZ10j
	 mgVXReU1n2OvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3D4C3DA7F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172199255362.2798.565989932277466700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff7172740f26737ed4a48c9d0339b3e8039f87443dcb12d800886d7545458a6
Date: Fri, 26 Jul 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721992553
