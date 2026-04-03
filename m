Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344E73AA514
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775248534; cv=none; b=Djt5yK4Mjt5aDnQou9dfwOC4cMhQskZNef5gTmHQ1rn4eC5bi1Z0el/Zf12fB5NxoAyhWM0G84TdjrgA7IFZ7L0vfIsze+1ZJ5Fb6ZZe1kFhbmSGP4RiUvSuzPx9nTB5DkMHg33E7BLQ8n6W7/lzrX3yPS7EaoCCaUlopyyFdfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775248534; c=relaxed/simple;
	bh=KAi+4+Z5LasLtUFwWJxdIBe5kXvTaVZUe8YKUONMu9A=;
	h=To:Subject:From:Message-Id:Date; b=TlLJhH+19bD4mQgZDLMEKkEBPKWWxz120Y5duLMhxDzvhAq+Sm+lBZUBjmxH5qtLlxp1B6fTftP1xp9aHmCehiFGBgFKf/5KwRiJtQttCBrXPJMbJidetgm/s+dhkaeVUrq3A+8aBq7yQ2IEs+HM4S4kVFIlVZTho6pGyVwX7U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdbsJ3H/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdbsJ3H/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31B6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775248533;
	bh=KAi+4+Z5LasLtUFwWJxdIBe5kXvTaVZUe8YKUONMu9A=;
	h=To:Subject:From:Date:From;
	b=PdbsJ3H/+VRHHNyiHlZaRRCho+KYSxXrefxIxEIyAP8ISfthltpyVmZNlqKr8B+z0
	 sKu4sSELdt38E4Tz7smPnQonMOQQatt9Bra/GInaNJuu6FpR+45ULHB9xsbMOiaU1S
	 XFwAayz8HoEJg2rm3Fd7uaEuZnH4aAwkKDsohj6TDPP7djRffAMsou/QKCalEIRbz4
	 4zK92IzeU4aA0dKH3pqUC7ktIdA6+M/ucdR4xSjm3pIlGrEsFHRiBeDbl+U6GF7aeH
	 kWZc7fSP5Jdc8n4wLharznZrR6ZwIkY1o08j330Of6zg9ZnByCRKDIXzeemns2/ysr
	 M8xd+7NPkGJ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5E7E8538E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524853368.20382.4184186608393547523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6c78e1c9d453a219367b60c00e9f6b38668860eba00121c8a4814b39bd3ff8
Date: Fri, 03 Apr 2026 20:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775248533
