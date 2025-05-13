Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D90AE545
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747112394; cv=none; b=jgoKva6ZjM89WIohO3mlWpIKuXiJnyoSguK0MLhNS3M1ENYDSGr7Pf5V8cW681T00r9LYVLCwobpCciDydvkCZOgyUtYy32ckGJUyFMQW5SLvgl1NuqClPK1Pd2tU/wsmZfRCjg/xoUWtj0Tqe9671JTM4A7AAcBO2LL+fuFMQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747112394; c=relaxed/simple;
	bh=UjEKlrMXqbqM16VFuokoICJM4BKnY273Kll+VGmoAMU=;
	h=To:Subject:From:Message-Id:Date; b=HglkghIbuRv41tSIci6wD/ILeSBRmLztSfLZUv6jxD2Of7rUJh2qkZkqFqzcbYraML+MpIC75InnYOBN8Ry4CuxADylG5SuVFfyNbu/Yy0x5BgFyaBvYcnLzNI5g0FccaDJjwHuhrcV4OvF3TJ/ny0fs/bZkI9qajIyFReR/8Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvzFQMxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvzFQMxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747112393;
	bh=UjEKlrMXqbqM16VFuokoICJM4BKnY273Kll+VGmoAMU=;
	h=To:Subject:From:Date:From;
	b=ZvzFQMxHBAC+2ajCEnlWY09PEqXZeBlngKGUU+ZjAjlwHWtWCRdXDn47yKYUp2JX9
	 oamBaJ5KYhnk6rWZe6xWONcGvIgj8U7K52ZonHhZvvbnqJIbd2ibALHC6+Bpv6ONXp
	 fIb7ltCKxj/VCNHNnlJWt8UcnRJD5qvccqeZ3AcTHCVDOhqD5Y+1hnFwV2ZYz78TuK
	 8V2ZUocRU8LTwqP3HPreZlODADb3wewK5z7rqauU+Tj2Vtm9PQLONt58bYD2otjccx
	 o+D/NK/S2SArJ29wj3aIT2TU/2UdSjtwJ2LDYYlb6OQ7aseVTQzVgwIZkA0fR1BXqu
	 m5JrPpTmGru9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1C1C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711239357.16060.3934986286022381513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3635ea5f119d11c29d41acdfd2a425e99269b8aeb277d96180a660a5a19100c4
Date: Tue, 13 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747112393
