Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5483623BE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713997883; cv=none; b=QaXVaWm6UK8CI0rnMNtDaL43C4zBQZhj30PNLTkz6I5s/vgm9UBC/Tu/1ajwinPl1cah4Adx0ZoHgNk/+TBeYTSH9sbwswQAPpLyBLLMj+/t84k/XPqDuL0tpXS6dxKxTiPoeADu38aF8Z8H3i+JSk/HDy91dzKRH5ilXSxMJkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713997883; c=relaxed/simple;
	bh=Dj9LICFwGOf52LyO9drwpJ1TqoUkV0xdDTsT47H6uEg=;
	h=To:Subject:From:Message-Id:Date; b=jWNGt/mPPb/OJMVo/EeXlySqNpU1Y6DvLIuNJ9eSp7HNRgfC++/RsZYfEo0hfSbe+jKBQaPfPjbEYWNBhW0CBswG+nVi08SWeHedGtTtbXYb1CMpm/FSxFC45h8lVcjc07BprL5uKKQyjDQMSvoYHAyUI6yMSkyw81HD/EAdT1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rB1Wm1Of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rB1Wm1Of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1FDC113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713997882;
	bh=Dj9LICFwGOf52LyO9drwpJ1TqoUkV0xdDTsT47H6uEg=;
	h=To:Subject:From:Date:From;
	b=rB1Wm1Of2swq3awwISGFrZD5DLfSPt41/4L5CGGSAKq4At9gX6zkbVbaaUSFH9XNu
	 v2JIfJNmOw2RmmKt+2bHgvcQwjE+yEY1u0mfo/nw7nWEnCKcSbw5Hp57/mACoD6LKU
	 0RzQnP7wPlyGypRjPuUqTMnrWhwCbOZqdw3NiC+cPJDHkY5Kd6VZhkC87O3rM4MnvQ
	 mX0MyUQmlQngA2d34CtTd35tNkD0f9rUTqdijSpVdlKWN+J+OgYC9DgcpVTRSv0+xy
	 Jy+4uWS2W4o4v8kIGl/WYnLYfnjpdnO/JjO59EVr81N97ZM5Sv3zRNBlcnqulqE8Od
	 ZvIefbP4CSpNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43D4C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399788276.28260.18093141869540111725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb34bb24ed3df5b9a5d10c50fd2771b2a2b6a03517d29f9fe386167ce551e3c
Date: Wed, 24 Apr 2024 22:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713997882
