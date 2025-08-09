Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326072566E8
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754776794; cv=none; b=fcTGPIlR6L+mSXcaTasi93qBL1dOKcgEnWoFFT4UOZZ/K+N64YRM6RTMTvvFnEVc/oH9M4o3du5T0QoVl+yBCBcKqhukPcgB7+PbNrTMffn0vnwDvBvWQ1f8+d0H9tyC4vRiNYyN/qTKXmiJFXubC7V0urVA/Y76y+zXouAPEm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754776794; c=relaxed/simple;
	bh=A7M3JBjo+EdIMa4tVehNkVoqEbDJtXhjy+cL/gQUr98=;
	h=To:Subject:From:Message-Id:Date; b=dY41XQSOzs+UauE7v0lTSt+K568WFh64fxK7VRv8R4VvUakTM7rNc/hXaBNiLG1ke2RziUY/H7z3WjBGlY4KgG0Y6FHLbix+nknPSjZ+R+gDzG7RdKQ+f4QtHRuTX/96Xu0ZfAz/xDHTG51M/zC6z8hbpKHcgwuRZPP/1kS70Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJ6xttAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJ6xttAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E861C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754776793;
	bh=A7M3JBjo+EdIMa4tVehNkVoqEbDJtXhjy+cL/gQUr98=;
	h=To:Subject:From:Date:From;
	b=dJ6xttAnLjAPTv2nbFAXBa5n0PYckMd4y+1h6GkhBiqDaB9UiixxBYqdaQNQvgaA+
	 1hOuLmD/B1WdhBS3Kg4EFeby4XdHsdhyNhXq2VGMi9r2B+Cf6DYmshPsWHau7enKgB
	 F4/eKbuPAx/LFSvP2RdPResujTnrZssRu1Z/RB7v3F/dzLwr0NUOctFU3Fwq1qDEgw
	 yqjn9bVdh+XQ6j1hg6SDBG2Qt0v0zp1fcYYNWuvjZHwrcQFX2Q6/QKFCoGL/juGwfP
	 cBQaOStHoL4/hqHdWsXPYDi8S81FrO159bvKMtwWEFnqDl66l0WPfE0i8euXGNZOXB
	 R2Vkegx+ytmKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E48DC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477679357.13953.11471735103300282422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eac0ff9fac548e074b7032734f79a3858502f966bc2c1350e51780292956fce
Date: Sat, 09 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754776793
