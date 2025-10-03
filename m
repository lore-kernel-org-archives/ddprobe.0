Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381D3134BD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759499994; cv=none; b=Jba6JBOXvjT8lox6tRylZtwfx/b/oyoPE+NPIL1oleQhHOZ1IvkmGqd7UDytElFvhm+V1VS2FgSSUKeIlmEc6bZoQSdtoz1baedpwarRL/s3WRQHM3Y8aS/qqzuIXrFpkG/pSx7jdAfwAzKCDychfaPtPNAUiKYnUj8v/gFwenE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759499994; c=relaxed/simple;
	bh=6AY2q9xR4SPeUaN4krV2X4TkbMygIisNou8iDEMc1FE=;
	h=To:Subject:From:Message-Id:Date; b=BM7EAH2C4LS+oKmbUJELB0fp+6j97viv94H1OaS0aOe9mf+cMZAaFp25nFWAOaPVrK6y78Fs1eVC/j5xQnU/2+dgcl4CCcqXhi28MuhhfeJq4HCLNrlDtHM25EU0Rc+9tA2xQqjjPRmNsAUArm3q7N+1IOs23D9s64IPFcSIGnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3UPfr28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3UPfr28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2943C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759499993;
	bh=6AY2q9xR4SPeUaN4krV2X4TkbMygIisNou8iDEMc1FE=;
	h=To:Subject:From:Date:From;
	b=A3UPfr28afbygeXTp1II1C1+xJgJUyEvbJaj0Vq6OfatMbBR3gxJ8727uqEANtSga
	 1467tZzg5HGZwwZ249GZRBgO2j/SWMt59MK7asej8rPvsbVIyBJQVJIbHG4FjfVx2w
	 CUC0dqwOFk/cc8Fi6IEG0MvrmD2hKYtP7fmhFxfLa0QdXEDXQYxXDf5JJnzN71jdxL
	 7RwBTyM+9NJcdVmmu382qb8gNi3QQZXAjpX4vUdmT5HOZzY5iiP6ihEBjCGY8MwWO/
	 RkEwnAsYiBwXyMwh+YRqMUb6twX5EHovfyRtGlFfKvu9mDKxfvpm07sm+tn7CpSKYw
	 VKUa0R3PoFGiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F139CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949999357.9631.1961703096742635659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dcca66d53a22a7ecb062f90db18df44f89d4c434ac2cccc8ee9b60510ff1720
Date: Fri, 03 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759499993
