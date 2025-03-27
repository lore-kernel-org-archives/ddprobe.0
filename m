Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D801D5ADA
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743107994; cv=none; b=AITaEnE3AOfk+n5fIJqTgTzxPynFLATpAL0i08b5Q+upfuOUEVPbycUv1PoFhCW+xLl4c5Uf0pzcfC9T7nOfxu2kQTF7i/uu1I7CffzUmCVnW4iK4ai35pQXpEMsSd2FAqxEhaN5RI0m1KBTeOOyZ2ILgYdgUk9jgPb3nRlYZKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743107994; c=relaxed/simple;
	bh=Wc1ppa4NYWxe59JVpHsNk1/AZmg3HK/NLWVKRuHhVew=;
	h=To:Subject:From:Message-Id:Date; b=RsXhtpeAaoDsQnYSyUcuKDSFHL5k2EmEB5nq3XUrnKnfWzR0/C7XsSaNWaC2eCDmFegiNrIXAL97m+2hPKz8FOWJpuugprwK3j1AzcbVielivkewV4fJmWdmGOsJTqFTZDYk0dByPcQdNLQBcI/spsm+scVbiS7dkpfbrNlW7oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfhTvkWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfhTvkWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0B6C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743107993;
	bh=Wc1ppa4NYWxe59JVpHsNk1/AZmg3HK/NLWVKRuHhVew=;
	h=To:Subject:From:Date:From;
	b=KfhTvkWBLp6HY6mC/HOroNjxGFymL8rxWpDEfthcU1R7EnF839RaQXIfJ50QQvy73
	 1CtxPMead8iRg3bz+Iyp49n41/Nt0Qcr+obXiqH6cOd46NGqzGpeBSEkAn5Kf4AYXi
	 Kd4eM29cT3Hi3s87mnGKTOFxCmmF1bmIQgUTKRtD5sElcDi7pSNQfaEGnwaBj+A+33
	 L7R2JyrQkiJDxkBA3NpIx8IuGaDXmPwJNn2UrOH7ARqbLaz4EW16beSUwCK98/OKdx
	 t8OyBQ8l8wmwUlVbayM4Xbcl3kamUyQ/xB1jv7xPRIN0eLi7jSxeT78zH+DNPCgzPu
	 GKh/S0SNcNAjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FCCC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310799360.24747.10019032126593582822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62df254a143835a02c86722eba65828ebff3494bcb64cebe700778ece67d35e0
Date: Thu, 27 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743107993
