Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC07A126C02
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769975633; cv=none; b=ugiXEuxEFfeGYI8MWtLchdCsPAKo1k79fMrN0sdB6is0Xh9pXo0/w/QEY4P9MqmLjR0LDsno6Rww57o1179M+Nh7KlImKShOVQpH60qPgYXwMpUarrBnzpjIdRbasfy9cqUhil1BYhfpnGVcVUqTomvCDRAXq7GK0DcP/XVOy+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769975633; c=relaxed/simple;
	bh=Qbo4lL5MrUSI7g5JOQeIo2Xehwe1MnAP1933gqhLNjg=;
	h=To:Subject:From:Message-Id:Date; b=KE8+mjW3rRlAeJVdMczOqjJty14iLJNulj25gwjdKTG2wW6Z08iQYFcTqPKnNP4k9q/VL+lva7ApvRtodmk6v7uhtPYYzZAaILZqH5SMEWKQrRwDG6f5VRiuxHWRXRM1crBe8nV2IhIqWeEknZgOH6dysTpDsE3ZbSRJNzgi/qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlpSJ8dH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlpSJ8dH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEE9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769975633;
	bh=Qbo4lL5MrUSI7g5JOQeIo2Xehwe1MnAP1933gqhLNjg=;
	h=To:Subject:From:Date:From;
	b=NlpSJ8dHiImKPgExk8VZmDu8VY3yunFjikDaUsgEJOnPFnHGXSNCpP6GcrfSbnwfL
	 bkGLwg6j8QqAyMPshfS2mzmbRLuV0es4DWly+IHq6bq1+zZRHv6mdlAgwwNYynsnVj
	 MmxwHoDJQBYY89aY2nUlumfslEDywdYxvDz7+pumHEnz+FXSjl2MUZEK1OATOLGxQt
	 k2LaqneBmanrXT0H/KSbKif1/3nSeQJuh+2FMeREs4EX/RKTC7OrUg0Clt4cq/02iN
	 FF7EWq96462fZrviyrIOrCULoHbJr0CdMmkaslEoVyXyRJPjUCZMgnuhy0HoP1Uda9
	 UXh2Ln3yqrIyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990B3E6529E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997563360.25779.8763102908817417579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c66c978d4bff8aadf354a22975f0b31de3b9fea430630161ffa0dc5c67c9ec
Date: Sun, 01 Feb 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769975633
