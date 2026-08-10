Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C613AA4EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786352434; cv=none; b=W54ZaMwZ9dEdNqf3fy0JwfqpPYq5vVOB9XpVvz5l+u7gJYD8nj5vFcs8hVkPEE/DBzl8mhT0gUCvoiaVCnivNl6D/hf3qL3Oi1o/mNjWPNgzPK/8N1qk1URPAQ9W5AwzTHQayjweAp3eOw0Sbzh8nDIj/HfAGpeqta/1/PjqMVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786352434; c=relaxed/simple;
	bh=MenpudiVKQ76im7CRoZGYCby6TcqmR2jgdWkWliTOi8=;
	h=To:Subject:From:Message-Id:Date; b=Rwbf5sT/PYncntt9jJsriOoEJlwVxRVRtgkRZP0HPMDzGtcclVEWzWUheRdU8iLXkYNEOidf259yNgSyK/mIbWlOJO7SdXz0TCLhmhzJ6jWUWWJbhM1XSxfvJeJfjLpAfQ9xttAdOmAj5DMJ0gPYTFm/mgodDGPL7w9YujPbWzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fxby4Kmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fxby4Kmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28BBC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786352433;
	bh=MenpudiVKQ76im7CRoZGYCby6TcqmR2jgdWkWliTOi8=;
	h=To:Subject:From:Date:From;
	b=Fxby4KmzCtPV5xkndFV0GK3KcENQd+MbAZaqDT1bcIz20Iepl+VREUumx1w0203iA
	 dsmcFSbFL5pNR3rTSH1wWrJpESIoZ/HhqHwIns8m+rCNaIF7D9xsfWvCRUU+zYM3Tb
	 sTgk2FcPLH5K6qzp3iardWMg0l12h59nWlav+1YWaDyYvoi/nBqMfvH5PeIiyo68IT
	 F4hMd2Y2bdGSRGGlbEjb1oS1TS93jvTs81u9L1OV55qZjY3kxGvfrHUQw8t0Ei3Xry
	 uctYFQeb3vPg57+Gt4hRtrudeCAPqBYMUeh0TKRYK2Q3P8M5gnKOpLJpqb4jCZI0qU
	 cmQ2GINwM/bJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC980C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635243369.10005.9140267920545217045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a307c1ba17c57b1ac9f9cd17ec508eb3498280cb56f0ada6024fbbae637b2171
Date: Mon, 10 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786352433
