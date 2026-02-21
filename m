Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272853EBF36
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771717494; cv=none; b=W11ZlRVTWbNiIl9w7DbQ31MNbN1NTaCTOtwAQS1mhhjow6CBB/zZ9sROlfDW36lBgQYw1EfJz+QJQfVMJZxZvKne3US52soWCbMoVlRWNeMXZBdUEUJFlw6a2fZBAA1aeMl5wInzQw5GETda66hzJ9aXZukTLPdseDE4TYY4ZPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771717494; c=relaxed/simple;
	bh=5tX+c4x3+4kbVAaiYPthYFrz5RPO+qMP7O41HOehl7s=;
	h=To:Subject:From:Message-Id:Date; b=VpxXvCmE4ppd2IxGXZ5FfDgU9YxNnVYiJKKte+2yDK4efH961c4+YxVPAHliG5HeTTbSVqDA8/QXMyqseXv0SdOkYKAD/iWVRHN08ggTnLbGRz1jQgfxwX6lBKTEOzVXWE8Xvkh2Eo28glb5F/gTcOE/1Aj/HLJM/uup/KL40e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPfT+b9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPfT+b9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08CAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771717493;
	bh=5tX+c4x3+4kbVAaiYPthYFrz5RPO+qMP7O41HOehl7s=;
	h=To:Subject:From:Date:From;
	b=OPfT+b9l7tYy/n9bk0MmGHg8kJlC+a0uaFGO3SmL2dgj8JmWGfQzWS8Af/cw16Sj7
	 /9p6Jpdi7hJRivW9icd+LMRrEBhElFiuYF+BwblVO7eUPCaAdCBCPH6ma4743F5vJB
	 ufuksZUEvQGMdCrvGrDKE/TMSUmpiDy0nFDkJW+SBruOk1Yth4/B5Mxp9MQDL25uqI
	 u0HOHO2UkWlr7nPWnoP8iAH+vUlMQEAuIKXdYqh1SyKkU69k17zFN52U1vrK+pweML
	 eTU75iZEkirGlxfQl7tCnMFd68qEdlnCP3FnVvgssQieCwWCRJ57dlzfasVnMSwiJ3
	 9970M3JItfRyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DDCC624A1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171749358.20252.7459395856754613446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c1f5f65d4e03517d1cfafb081d85f5130d33c32de0050a537114ebaf62b2a1
Date: Sat, 21 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771717493
