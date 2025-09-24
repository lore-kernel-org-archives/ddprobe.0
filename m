Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB3D2D0C7A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758710994; cv=none; b=Z2Po6n6DJQx8voX0CqrGDBcuwi1B/sU30eqGuD2TuYEsxsabxiyFMsjM3jP3RYn+6LESBvRQB5zoMtI3KZCMfp0LbLuaHWgKMGzPI4Cw5kIYTvrySxo1VQXluTD9+1oAyIwQkKmdTV/6XeLVeKLO5QY6BPOpV75pNm8Jiao6HA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758710994; c=relaxed/simple;
	bh=jEFrJudT4b/4l5U7d4UeVzQSPftrHpNhucKr03TsncY=;
	h=To:Subject:From:Message-Id:Date; b=Mcm6zL068r+LGYAj9cXWE0TeOiMcH83qJrpb6AaOKMvL1K85jghMkh29oBKCDAKRTadoL5xOcU86f3XYOojuaulpks1miq2R9CRpwgNM+NYmw1uIiMjJzPyKaqjU2c/Z8Ug1xNWKQOKiRwHJnX1eg7XPt36hpNf/eg8TXgh4V/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETSkMk+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETSkMk+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70BDC116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758710993;
	bh=jEFrJudT4b/4l5U7d4UeVzQSPftrHpNhucKr03TsncY=;
	h=To:Subject:From:Date:From;
	b=ETSkMk+UpeZgGUa3TEIfsohZ80u/r3Daasy5ZT940gA7Z62H2MuG6pojvnORdlFkI
	 Brgs7LV0wGVo9PSEiNxq/mILvQOxac31MMQh0J02fgyJevY8Cyh/dGFcWlnvR/S23N
	 yw0RlWv+MavD1QEPJ4PCeO5deQlUH6R+55uyv0ZHXJ6F9NdJc+P1FYt4RraFpW73ba
	 RhSZ/jmAzMfWhfhZXsRMZvFbRleMkh0Ob5eLpvCNS39bE+0qvVAPQ9ySgSzPdWOr82
	 w0L2ebIXWGY6EzCXZAQizg6NJwG6KaAfHJgpFp2SXHcFubpyTnS2V12adOoxNYtopG
	 tDwJtvzJCPm7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BEACAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871099359.30804.5960167821332070637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115c47a620744327d10273f4dce59a976028574386a14b3096b9955ac69daf22
Date: Wed, 24 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758710993
