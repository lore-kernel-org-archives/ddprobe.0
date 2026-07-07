Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2777D1E492D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783449514; cv=none; b=EE+3tVBxKyt9ENyjWmChBCltR8FvuXOUCDDcUxXzFOYJL7xiBaapdNA1WPp/NXpl1x22yDJvDH1SQmboMTjSVDxIdrz8oMeKlGMo+MLAScPmEbG106HN+IhZR1lT/0JkcpA/pkxBpYMjSX5fUPuFh6QNTEhhxvT7c4Cz1JNcveE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783449514; c=relaxed/simple;
	bh=mHkO9Ic6XUF11q4uPHt9K8ol9h9Sn2tpS6foizDLxyc=;
	h=To:Subject:From:Message-Id:Date; b=f7J5raWh9GGMR9M/ZhBD2QREJJxiJUy2IYA8tMPNFlGxfqcZmdAPlYFqeHdptD1PMRLGEgYdGjEGEYMXy15/ms3bj50S9kX0+1GLrPX0VtlgN6hMxKhT6QZqso+QfgyjR9lMCo54IAdy86taSoW9VzgM5HEqfrKEAGpOB406T3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+0TjpkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+0TjpkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA3EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783449513;
	bh=mHkO9Ic6XUF11q4uPHt9K8ol9h9Sn2tpS6foizDLxyc=;
	h=To:Subject:From:Date:From;
	b=R+0TjpkM57oNqSS/dTuWNvu+YrtAIm+9D3DnV8eI9MzkpJ10Ma+x/HUpaERL3WN+u
	 /+E2aYMs2AjSpT7IndKy+RIDUZYaO4wnt6GLMX4eNvU/UQVJ8Y4dt7YcjIxLpSiRIp
	 GQl5F2KXInt1o+djroaceLIeE8vafrCttRbhyq0N1TDE4L/f0HKkEEwjnEDrRMw6GK
	 bc640ueVcL1EeIFsANsxHcyE9/lfX0U80XrfCB0AXpceWU7UoLn/7+DpJj58KlljG+
	 I6z95h9VQ0YeiRiQ830du4IBDTnQE6FoZbDVfnfZrm01MLOOpTjAnBvJ3llSPjNm41
	 Q+s1vQkJjspFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B3C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344951368.29378.4729241261019846439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb537ccfb372e6a373dd11f2c57afb22920bf1daead35164e37426c95a38579
Date: Tue, 07 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783449513
