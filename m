Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EB836EAAD
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772187294; cv=none; b=cWYw1TcIPLZZzIF1O9vNxKaPDZR9lzUP7zpSdZyGAYqIH3RQrtDyaRXjcwHop9mTiuXq0OXXZi91ppfHNaNQ7g3b7UA2VidH57jHr917ZVurxsLROCQyxP25LUJ7RmPYkt2UwsAa9h8Xw/hpq/i9ldTla3dhL/pG2NZq+Q+obwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772187294; c=relaxed/simple;
	bh=t2DEwCZq3gAl9tWkXLLAsFAwDm1w9cCaejdyAKSVHFg=;
	h=To:Subject:From:Message-Id:Date; b=iyb7vgdUSsGWKzsGQf+tMTAlQoN1Kkbscy3hDtbk7RCy35BqAE6h2/MJ0+L1UercKyIVhvdfnQ2vVMOdLNiUHLs0idSCiNDpl7OPPg0uDznUMndaClTK27fwPA879Xt9SphUg7uq0yDHJZbfFGBoMIx6yLRk+t6i+YYwazUEeoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC2IRtEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC2IRtEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CECC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772187293;
	bh=t2DEwCZq3gAl9tWkXLLAsFAwDm1w9cCaejdyAKSVHFg=;
	h=To:Subject:From:Date:From;
	b=tC2IRtEYBjBGCJdvA6wNPp+m+0WgePw36zCGF3oj/vueJrOrq61vv77hJ9r3DwqCN
	 dA5hrPd9SPMULA6vykFHB7JNTXzA32qgWtd+DVUMwh3IOCvNoKf+NewfdIyaUN8uCR
	 GBT+9vNl9In6SUeXfjHuaqu4CqxJRYzhZDgzSa7Clg9dwdWSQJYiss/0XoqMaUL5kb
	 r/AUCmQ0+dcBDQ4xM9xj3e44tFEQuQjOyzQtAIegWOJyUurh6NYGdwQQgBp7WHEnic
	 OpQrEGJv/CS8aTzxdb5mRIpMy5PQCAfbib26yyXrXXoE+olNP+lgfadsZVtVIw6cab
	 JqWRCK9sqkqzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931DAFD7F6F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218729359.28918.12763779040003934227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940039dc829ec0ae42be08bf26f284c3870712c40d80433838094cfe32ea29bb
Date: Fri, 27 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772187293
