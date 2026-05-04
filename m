Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD973E6395
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777924054; cv=none; b=q0NfxTaD1ZvQLGl3IVOT8B1ygebCK37YZ4mnB2wg5oPSf+JhTBIYbZNa15sAfpebn3LG3wLiYA7gyMpgmCs+r2GTz4EOQ4FdxNx/k2ofUnSbZWa93+5OT6nFpP9yliylOHi35Hk/faBi0ZiDqgD7wPocymN8SJCfO2tSVrOXYZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777924054; c=relaxed/simple;
	bh=B4LmZ6aPLzAhY1Lzay2WU22FbOt8U1oy8px/r/Blsiw=;
	h=To:Subject:From:Message-Id:Date; b=L0io6yPfTpR1QZ+p6+/bslwZ5M1aRLhUDB8Sasr8c08bjrVCw3yy6lRXjLVEH/HA0z7UI4v/5tZ/aAd0PiYrNR65jYbKNM2vx08RaQI+qJK4N7Twzedsn6xjezLz108ImneTcchWMAXz6tDZ1LQ4Ios7pMSEJiLlMcJ8QclgdpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcECr5CT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcECr5CT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35B9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777924053;
	bh=B4LmZ6aPLzAhY1Lzay2WU22FbOt8U1oy8px/r/Blsiw=;
	h=To:Subject:From:Date:From;
	b=LcECr5CTHtcQ+XUl+5/pbAnz9YlrsoefdLaGfz7sZSkZ5mfNMp//nVL/PEGqPM4eY
	 Zsyw3x2O+Dn9egb1GedmWyZdnDsa+5SJ9EYBBBjCZlleyINIX484KKKBJOFPFBGjkk
	 1ZuSRT10mK9otP9y8haBLPSUHuPLVqqByN2ddXdgqHf/bojn6DGQwXB0w/JrtJ/7QT
	 RJyr2jwo/5ji/SiIn+4g7jU8q9Yq3DXESUX3wPCq9qX4X8W29YV6eyljRsAqWn0eHn
	 gMVtgUVTc1YIHu4dYEaClD7x2anrcZHMr9AyyF/vwoH7Se8AmgAcQNjAXN54AB6hNL
	 EDnnkiC1q9p6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07CEFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792405368.1382.16731579631534250414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15794e2cf334d2e41db033f399b2cb331916bdd27386ff5510f0d6d0a0f66dfe
Date: Mon, 04 May 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777924053
