Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212651E5B68
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749745194; cv=none; b=b4Wjpq66/3Gf4uQWWdvXOYR8n3mykhJSBs/xPstsojbMo7wZcHIoT0ate1Pz6z9tqaItEsK5v4il/sEweuTGzsYk8rs1fy/zKzpB2+EvHhEe8pDFojaTAOSyH93GoR7qCmZOY/2+4Jcni8OzWAEXpiXHMi+uNbiuMAFE2cvwISI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749745194; c=relaxed/simple;
	bh=s6TVeGTGJNzzQh/GED4BU3DjdGRNAQGo4NVV03TUAjw=;
	h=To:Subject:From:Message-Id:Date; b=B9U6b/Z/UpGOrgFGLnjH24PVM7tdtGWcJ/ysmd8s8QwDQ3MUExqsqIeP48/c9vHxt9kL8icJDRlvKCcMStjVwSdpau1KrazCDCKFfPeepMM7fyymriSaQ7I/Dtr18XAic2jgym5Ly4mWGowIzYk+/V5rTfm2cOgSMhs5eagXWls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYMsT3Wj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYMsT3Wj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5795C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749745193;
	bh=s6TVeGTGJNzzQh/GED4BU3DjdGRNAQGo4NVV03TUAjw=;
	h=To:Subject:From:Date:From;
	b=sYMsT3WjXfMarhqkJXa5SU/75mSyeBgcEFERbvDkMsZsQVRQPCL9hUOMHv3PCFQkk
	 kLbPYiMbvwqDKza9TRkVxbiYu7JPt8vQQDo0bGDWZuXCF6baNZ9taVUeMVHIobNbEQ
	 UtrerRCIHs7Mui+3WNIOqGq3yVtp4wBMEtYO/jI/xnpa4Or1JOyxnChvsRFlniN1B4
	 V4HDpWhQZXZ2JBYsUp1L2yuQgUX2Uk99Af0vT/n1uewJXgDHtLE2UOf3KDHFgOtQQO
	 x50jIbD/b9VOHSiL+yabpJ4X00x/u54AWg/u4XgjrTsy2mssdMfavPdE+jU4BVLM/a
	 xHdEXV+Kgd83A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F3C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974519358.13344.14314812587223310515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c579a706302a3c127d70407d050960d150f45c7171f30d6fa832623a547c66
Date: Thu, 12 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749745193
