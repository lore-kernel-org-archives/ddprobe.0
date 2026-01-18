Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0296A286D53
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768709634; cv=none; b=n2asdUz8euOLU9ykeTOzr+p3/N/LPXV371aOtbAl3SHSD9rf5pRClh+vdhP+aKkt2trmQCvbfDaCGRIvFOQstPsB/xdxDzSdmEH1dVFFymURgZpOrcmfCQDANaUjr9Wkwprt0EWS7SqtYqbAXuR4ChCWqdZJthkJSVuKbmldglo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768709634; c=relaxed/simple;
	bh=Nk4hJD6t3I8LxmIgphj/+0bdjVGY2VHow1WPivrgjsM=;
	h=To:Subject:From:Message-Id:Date; b=WbdTuwyfDnLToiEifGqESzV9URWTlSYMYJb/Au5vVvkaK1oTfHxSMUDMIPoHpVLl7u2mVCXP7MlmDOzBeEXQURlbYs+E4wRHOh6gp1/D86otM8kqDIGbGdd034oJUxJh7QaXoVeW+AxaDxzaiixKMZaO4fG/UdGrnSMrvfIlusM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDuKqcpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDuKqcpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED2EC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768709633;
	bh=Nk4hJD6t3I8LxmIgphj/+0bdjVGY2VHow1WPivrgjsM=;
	h=To:Subject:From:Date:From;
	b=gDuKqcpkBTpgfBeFwJTDI8NCaXvGrYak+pm0T9LCkMpcte4A2HvXvwO1JWowaU/tb
	 oTXHfxY8cNxQVyGfTKSE6Kq2HhJMpgPsn2mwho7tmeo3pynNDIkbcZ+df+MzWBjwRD
	 BGXDt3Wy225yG7iF0NAToIuku9ZHWsbMrugnuRCG/5+IOV3JVCRlrU29JMqnL+jP1h
	 uyyZn0ONbWhRpoYzsuU7+JenDwBovDSZJvP3e5M5peVtA9yY3dGrjOlxSwGnHc0cDB
	 UFcq19a6mh0hp1wK/GSIs7m6nYwsvV24bSWef4rHZnmGx2P/n5tc1gEVqayN6Fes/a
	 yvFCWjWpZArXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D1D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870963358.2630.2472738440614312358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aee7181ce2ca36b640b4cfafbbd545ead818194f98b023141eca18623a2f47c
Date: Sun, 18 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768709633
