Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319681F2380
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778706034; cv=none; b=a6f6ncsWf+4UJJ8cZkzSfq69YTImajv9YJqUCYgF6V0LskAXi3XuXvt6MthCqnKKXBbQ5KwkrLMQFZBCqZRXMMmGpl1a0sYPBQU455ojUQJ0l+3VVDTKZmKiVoYtxdQGYVco3FUR6OFXnUGe1+5uhr3HbF/a0bfTgTLr1QTgY70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778706034; c=relaxed/simple;
	bh=Q6bikAOQqYikO2EJ7wb5mmNLYbhi2JoWCCd0ngVaLo4=;
	h=To:Subject:From:Message-Id:Date; b=GlTUsuDaW27WyolslmeE0uv92F08PFAuZORNdEPfFMp6R7bhF2SFXhtMbL+Ya1WiuoxE2wkgEL6H56WzHsJpNnR4WHjFzDUDbWwOuXJSy2LlFzQmm1aNjTdaQL+qge8iIyWFGVjBifzE6mzPyxp0bbJPIJtYC3fmfIvhp6CEVJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLHmrSPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLHmrSPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C221FC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778706033;
	bh=Q6bikAOQqYikO2EJ7wb5mmNLYbhi2JoWCCd0ngVaLo4=;
	h=To:Subject:From:Date:From;
	b=DLHmrSPuQMdpUVylqIWlp240usxYC2E2HbI5owL4jmFaNRSwoXQzsCUjW1ERvlW/E
	 Kf2cnRn63hwwQmUcJ5mloOCGJtpOWqcfWQuhNp4Mw8AYKOSLB68g1JwvitSbAhor8O
	 P9oEUmPnOzzT7JAMi7gcumpgiFm4aB/slYVAd0G17NSEtu8Dt8uJjtg8okYIXARwMR
	 u1Oq0FwAAT4TTswBfwoMdC0zVywwv6IcA/LsoDoBVatGSCr3Fd4w0LAkSezawblQN+
	 C32sBsLkBEfYC+5Pk5RwSGlAtBJPE/wm1/+ygPwXAKLVfYu2XpNPEaAlfvhRXrLPdD
	 a+5jJ2bH0/pRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05C7CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870603371.531.8190461169321250424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf29b24387497007a174e002aaa55d575a1b7eb23709406ffbafc6d2054c33f7
Date: Wed, 13 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778706033
