Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F1C2E1C7C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776952054; cv=none; b=Wvy2Q5pD7ddK8e5d+iAOLfFfhdVqoaBkbc69A+2ewQSH6l8DqIR7mnrrk62LgAt3dL+NMplECvW0Qw52TyRHCp8jqylLFkqIpqp6Oo3tux7WpeGdCKIAjDMenKb7Gi/gWXF21Fn1LHK9IWsYOGyvXfWBHrnTDNwCbJ6F1RMkSwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776952054; c=relaxed/simple;
	bh=SWR/OAU6qlLwm0dyTjB/MFSFN555OUn/Sw6WJPiFQio=;
	h=To:Subject:From:Message-Id:Date; b=R+VEFUyyAOPI1iKY+2UvqGMI76gt5GmYh4hCRUHuRfleEjX0PgQZWFoEPaqePGCLMsN1cIyKIAlY+o0mUElP5Di/KZ0x3Bw60ey43LxxbsSJC/yG5Qg5qbsclzGep1vbRLOOWdjS29oODerYalb90gYa/nxkACXd8ca8XkLfOP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbMmOppn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbMmOppn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D8DC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776952053;
	bh=SWR/OAU6qlLwm0dyTjB/MFSFN555OUn/Sw6WJPiFQio=;
	h=To:Subject:From:Date:From;
	b=jbMmOppnnDl1b/ZcjVd6bwKHFU6hLWdqIilDO/aigtNNpTooPRBq7VJh2Limc23XD
	 oAC3wkmxYCOfpr2smGlRZ8KHQ7TzPs60v+uJflWuyCIwAsyGD+S2eWHu+U4kb0NIKo
	 t+nBq+4yyKK5MZM9OIaTx5iLEerSR6QZqZKft4K5XuEGOBBCBKXp5a+mc3oZAjes1V
	 O/dkYgIpNXsq16UYBfnOfEydUs+tG1LCjLAkkXFlBAR+7Su2Xcnv4n3gMayJOC1sKF
	 h2Uh1HnmioDhb3HZK2AyUjlWY91Ub5aeHMgoliAKcu+9GOSGYtNYCmGD4946ItSSdb
	 RfvdJkEO2jXtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9843F589DA
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695205368.10458.5984396494924936144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5180ad6b0719db1547e036403ba7b3913c0b219d369ecdd710ed22282a15cc80
Date: Thu, 23 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776952053
