Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179583803C6
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778313454; cv=none; b=a3paR1iHsMAQoha/bKtmtNLlWdvq9ssnWVDMR8h3OhozlOTbhSSXFgicEqZzjrv6Jz3ZRPBCO36Rzvp7g0HzUv9ftfNxVUAXeGR6OxMacGZRsREAWVqrJRiGoAoyDjWcvI3inaUuB0sdnlH51lGvb8hPYNswvnWWgCFhqkiJEQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778313454; c=relaxed/simple;
	bh=YHtN3rWx2KmnwQia+zMFz0P5v39XFCcc142v6SQRqTI=;
	h=To:Subject:From:Message-Id:Date; b=AZ8Ch7lbibEZzEAx6VvGAIcJzUntNc1005kjjvjcjpEPAv61d1Gl60c4wUPnY4IEEQtOnqAO8Hs+bvSjsr60sCzMqR79M3uhRdFiRUFB2EyBtZSOt4D2Eo4BRSbpsshp2JYiC4JUKjUplZyfVSwUQ1V5SAyXms71jnZezhZRnGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgS8qyZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgS8qyZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6A2C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778313453;
	bh=YHtN3rWx2KmnwQia+zMFz0P5v39XFCcc142v6SQRqTI=;
	h=To:Subject:From:Date:From;
	b=rgS8qyZpWlHIk0Jc/0aYzKK4Wig2kpDmfJuaGJ9aM8LI3ONvM1uiV7FsNrUREi1hQ
	 fYUt4SxYbyf5lAjtrU3LWuarMFYWvghweTEv8bYg1ijwiyRfUj/aJ84YTOHBW3ITYx
	 7lWLDGzeQ10qZDUbmLYb4TrFAsTa0PHnn8VPoTyQ2xcFpi0iyYETR91Gwvd2XcLagj
	 A3F2VTl7liOO8sVUt2fCC/f1WnSAxeiO3CypE+hn87hLjOF7uMnh/+I5YLPc1RGAQf
	 AJs1KU+LHNOJgpdH8VK0HVBpvgZDtqOJIrj/Wiv6dAMqO96LuNM6JmpVQyQejdPSsk
	 BKQXGx8diVDUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA26BCD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831345368.4998.4210934108656374177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d9590883ad882c179d3cdfad81db015148e2add8f2050ffff81686b05a1f05
Date: Sat, 09 May 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778313453
