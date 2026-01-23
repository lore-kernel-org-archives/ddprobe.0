Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D88529BD8C
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769199834; cv=none; b=nla/wGJuH1ZVOnXD4HEblEL46ZLNq0GDMUakNQx58Zg6jFGpf6F7B3Am4BsPlL76hpCmkqXRxkkWpVbvOAqgw9R806GljSyHxzDpR54q6V3joNvR5x3oGhcO5vmhK6Mk6bNdS2gvy0rCPq/975c1rLFUrAOVqRRX3TgrzzQnTzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769199834; c=relaxed/simple;
	bh=TTFogdy5zHAK7L1heHy5NlkeJU7l7A1TrXGXdOAclGM=;
	h=To:Subject:From:Message-Id:Date; b=HzZUiFi3BuHASZiigDrXpuAqKbBKX4yoQtTvhhCmDA6z2jZ0iqijinvmiT6OKs6uSwZ0npqYNDn1arvFkSCx0wrpEI+shMvCoB8rP+qvkAGdx8VBFe2tNhcJYRT3DSqPbGEJRMFzLo40Gl/8nMvXsCRp/qMdnxAZUAAXWjuXsqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIafHjT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIafHjT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E99C116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769199833;
	bh=TTFogdy5zHAK7L1heHy5NlkeJU7l7A1TrXGXdOAclGM=;
	h=To:Subject:From:Date:From;
	b=XIafHjT2sv2iSarQVLjXdZoVtR/Gsih/f9Aem9+T4j4DgG6PPUGfSaC+gMSujpvC5
	 KdaNDm+SyZXJ7+4HuVaDhNOPms9FyHYbPLIKTMsEiXSOveMJ5bHuukOk8dWMKm6t9n
	 +DS9N8E/FayuI+EqrYakXLdm1GrM+BjXUZkowU3lASllczM0quV+zMSjCfp/aW/kFb
	 dkTqCclchOnmPz/25fy8VYinkBelKGIXnUyZ/wruGEhkArk99yJrZmp7a1Ev6lXQRk
	 8FrR1zJjvh3Ggui3TqS3TaRwxkEBiPHMrjpYnc27ldGcTo9j1sBFbm2rKfNzF/o/T7
	 LD17F3uzmrRIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB1D778B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919983358.27033.6017987662963812862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3413df51ff2cd7c17fad635036f58e2696191f757e7586d624951b5535cee71
Date: Fri, 23 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769199833
