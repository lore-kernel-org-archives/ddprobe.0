Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCD42367C4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747399794; cv=none; b=g2o5QONsUYFKmIlt0YDQcU16tlTnpm2EwZ2ui5s/26SPHIIn3k7Y5oXkPxSlVQBP4bwX0x0DOOrvsDHMZ/7b+O25Hl8FqILlxzb/G5vyplA4V+k7FGrfLv1d+XriItI+rPvcjCAZKJCATy7ScVZbf54IPOeFM592K/tMmWTZI70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747399794; c=relaxed/simple;
	bh=wrAhb5IIun0IarUHCE3Km6k6mjEmKL4E4COdDj7CF78=;
	h=To:Subject:From:Message-Id:Date; b=OOWM3T0RjTFNXe7fOluyuJNvB1Bdn13QQc2NJ77DC/aAXKbMuMranFSkcHAUAt67IAn1s1gzgNgiPGZbzcjOYjYqfAmWmRPqgmP+QYlYQkeIJPiGGXFul9Fc4T2l2czQPEOh7Sd+n9WUk6oziHgjxxbQEDaJRtJ1/Ak9hR8nigU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYPUZCoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYPUZCoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747399793;
	bh=wrAhb5IIun0IarUHCE3Km6k6mjEmKL4E4COdDj7CF78=;
	h=To:Subject:From:Date:From;
	b=BYPUZCoU54oHAhgKTA856c3KsVvZDxSWzRpqWpcUVPFe/xoX3F/XsUn099+2iXu1y
	 YfIEhnAl9wxYmJHFxctlAZB8TK43PH6PQAduEVfybBGud5G1YAKcGnnYPc019S0jR9
	 A0SDpshqROtiVwX5/i8+E6N2/PSpBCvzOMdJQ7VYeE7EcFWI9wKwypCH93wOLiZOuE
	 K8lGYYXCx3r2Im+JWKVQ9Cn+y4Bjvgp0l701iff1yNyXM/Lv4FGiCC6qfuDUI3462g
	 +jEUF+g1MpwQfI8Xb6/xV4gSP0Qw1VRkBGKG6SMDvB2t8khXPVe5Qv3K5VQU9Vpjhn
	 7dRz5cHkkWErQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F123C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739979357.12017.17246274582039021239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0177f031c030a0533706e88303fe715ca710ae7d9890e013c4676d7fc45cbf84
Date: Fri, 16 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747399793
