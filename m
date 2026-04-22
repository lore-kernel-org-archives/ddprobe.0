Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E97F34C9AC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776851854; cv=none; b=u37XiVOm3EnW1lOa+67/WSTDpOeHPuBVDqy2lhgeoRlKB/YaQsxethxTMXG9EuRX/sfazWiMn5pQ9vDm1tzf1LPYqlxFaYBz70nePglEJQ1a10D9GfspczdWr5g6417eNC0OJz84YaQKmA/lIMCteZO+87K7tcTMbUeVgYnyH1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776851854; c=relaxed/simple;
	bh=NjRqStBdODbMD8tf7OvvgZt0cSkN5f4O1g4absipRaw=;
	h=To:Subject:From:Message-Id:Date; b=TvA/T1sXDwOD0wGSFgyq2Rj/X9joviij2fvxVQQLv3ADAb6e5ZwybiKJFsTqsefxg0r3smCPGf162uYg+SRUe3gSx8QyxPUcfuU5OWqpMgjL8oIgB/pJ0pY8aPQg4QjSOkM+bMxK9ZcDiXxvBSkHl1ecM+vpe02je4DroytgRu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVut/VIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVut/VIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83FFC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776851853;
	bh=NjRqStBdODbMD8tf7OvvgZt0cSkN5f4O1g4absipRaw=;
	h=To:Subject:From:Date:From;
	b=HVut/VIMfAM217dKB1CQ9J2CWkNeZAnpE+0JvNaezQEw5GXg6Wq6Fkgii6cuMrMsl
	 l4eMGhFPKytWAQZjYJvxX9lnuhnSS7TVSFqOc0lyfp7Pv9xdCb/iXruXdmmQ+obYqq
	 30ZEBzLkDTo+mjPjruu80FiGYWTg9sZe85CAVVfNNhfzhRR3RDdqvEPlRmkioy9OXa
	 Qn6st3/k4WG9AqAMGte2cSuqpJfJFOh1d5/KPqrDdYx1a3Hcqcwwh8gcR1JmKkp+H+
	 LR7YRWFspVZe1wWQDxwtOwLAaKOBt5Xc6HwwF3frOeBfsWGZA2vz47H1eHHWttHfxK
	 yiYnPNdKYaTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96DCF9B602
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685185368.4875.9838000131309044350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e237a2e9a42745309533035d668fa85b8b96601ced0cf67976e47ac9dedcbf09
Date: Wed, 22 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776851853
