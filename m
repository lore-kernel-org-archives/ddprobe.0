Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F11149363E
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787332834; cv=none; b=Oe3C5LmEzWFmpYsSLwj9H7FfsZH0aYGE8uns2Fneai0vDVkODuhqqAS2hbUnHctgWblR4RJpaz9HZvj9ZASTbzFXOBdN5EtcvnS86JUeSCba4G8JIYoVTtvhbsIutw48rs5wHkOOjF3Ew//GxFz7V1HZm9hBaMvtfq1FlyHfm/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787332834; c=relaxed/simple;
	bh=eXSHQbLFw2AvxsWkSxM4DggSFeIRqURHlvKQcrD4EDk=;
	h=To:Subject:From:Message-Id:Date; b=lswh/LAowswQiseb7YPUDUl3fFDMbuuVZ3V8Rq9NzNmJ+j7VUOjaSsZLoJtwMopYFViXTaL8wrtBwRbTE43lx+rjLReNr+3irES/EbI9UHcRUM2FLTGBxtfPF29FE2MIYnOQWtEFw5IlGVNjFi2mz8PlWEyA2zTAkJi8AyPccis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hs0se4SA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hs0se4SA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8415C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787332833;
	bh=eXSHQbLFw2AvxsWkSxM4DggSFeIRqURHlvKQcrD4EDk=;
	h=To:Subject:From:Date:From;
	b=Hs0se4SAMVxc58o/WMZ/18Mu3dP6tkzKCqCLJQV+Zxd/pmXuB4bCvtCrB/8tyoESJ
	 lTCnYLm4A6F+ZDMOWHe1XB0wJQpYpK732ujYgTYypSsB+3D661QRNN0YLHPWvlN7P9
	 vHCH4uxdHdCjkWRw3OhDtzDtbQxip2ifZakpDvBw6kSCjdJipYUQguzw2a+5ViM/ab
	 Cn4pgnPDK0jhsoUYW6IGXH+B4QgvGpDCRWT8RN30Vx1mdi34yZsPKib2rDD9sqTusw
	 nqTaXc7v4PlbVaDwUwSYp5lPVvvOYrjXGw40XRoYXewoR8hFk/7pg9UML4VKdRrwPQ
	 LlqmMX/DmyPcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21CCC5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733283371.13132.3410842742699673200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901b72a898eb5a2eccd6e7391c7b998cd54002ba1727ed0e9050d26bf62fc7ec
Date: Fri, 21 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787332833
