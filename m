Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5DB19C552
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743874794; cv=none; b=eYJgyzW3BcBTgNV0dm/oSs7jLHOCH/dLafoessiWhw4ySnnznDqHX552hm54bChoqh3ZzHkZcE6qtzc8mk3TCH2ktX9PoH4t3dJ+Da2qKL9+tY/+BwpZTAPpqhs+4Rb6c/NgelGVYIAsq5tVQ41hi+dUu59BBmqWCYSQniflhy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743874794; c=relaxed/simple;
	bh=tZydjAcXBUDxj7J2EjLmxYMhOblFxKSfPqtijstHeuo=;
	h=To:Subject:From:Message-Id:Date; b=lBQK4XIPNEUEvs61i8rTGEkTO2y+8gR15LOqXG5KjWiFhCOphwj3pZXDYzH4P07b/bMfx6uzQHyWXBQQFpeo7aOCHLR3h+b7to3LzFFuGy4xWwS/7WoOgnh5A9zbaB1Ql6zBZ9mtE77gjSutZN3gNxmh5pDhvlHyBUS4RqT/u/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6V4sOPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6V4sOPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C87C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743874793;
	bh=tZydjAcXBUDxj7J2EjLmxYMhOblFxKSfPqtijstHeuo=;
	h=To:Subject:From:Date:From;
	b=d6V4sOPVFKlLk6OsX6JDJfOub9n/ldzDgWfSs3dpcKtA2ahLU4nRBRuTbkj/rQ604
	 bRBqyGA7JUhPQ6L7EUBlVuuQ3SZtDHeMCLb1HebiP0i8GYHQ5IFPaknZsXrgRInKmH
	 E7KuuYRrfntHF/cz2/4HPA8tyktdjsm91iW3bCM50taIig3A4ykZ/2zX/EEwf23jdc
	 lrPx2XJm4tk5XbaiDsN2YHlltXQosLJQCjb/lJ0dVgElycBecHnjGtcKifYS8L9Abk
	 t9U0vUW9sb2mJa/EIKZlShlHhDI+R0/lfnE0DVbcXEKXq2H9Z37VViPf804m2P6lZz
	 FsD+c/kW9P2/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F51C36018
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387479361.28517.14409704827111220535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de998b9e1a0ce4238c188a51ea97d3d4c5404c301c48f3ecbd844a79d6ac447
Date: Sat, 05 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743874793
