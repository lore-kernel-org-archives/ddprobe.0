Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAEF309EEC
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774156494; cv=none; b=RGFbXeo8oTeZEsMpRLwsvf9jI5xXCDJU5KN1L/u7bDErBBw8XE7mB7U43yyoOfXZ+KocJL6+SLQiS/VfE4RbMhLwWM87E9P7f3YlDX+CICaZGZ0J7ZPpyBP0ukAheXwOENN2D6kg/tPUR6wZK5orz/2+RFHFGE8oSojRZeFeACU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774156494; c=relaxed/simple;
	bh=ni9gaHA9d4/SbMcw5liIcXUFgmUbAG9FaSIx4QYbimo=;
	h=To:Subject:From:Message-Id:Date; b=AUs1mQNta2XCb0nZ/lc6HT4HHFQkpj+Jl7Ru/Ojg8hw2mhFK5YokIx1eGPtFAADvM8IM5JEHcHR2HD8Vy4j8TSJ86i8Dffq95pJesqONO+MlJHzpb3DF6R8EsZP8EqdxKE+wP5JVzocm9BPK3olZuzr0yh3lKPEMb80ahpOcQK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njI+0bCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njI+0bCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A551BC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774156493;
	bh=ni9gaHA9d4/SbMcw5liIcXUFgmUbAG9FaSIx4QYbimo=;
	h=To:Subject:From:Date:From;
	b=njI+0bCwq6BNd/cQz0BM2Vtcn/iofP+IbRmeeo46y1etmuOjtyUoukY9Vn/nSuJxd
	 /fb5kxMlTp21kTCiwOiYbgFRCMrsA53u0iD8lVodLHnCe3gKZ8hHyzEcpSkkzP+F0v
	 OEHheQp/uU0kHJZGoNRHJ9JUcktYBptc6LDzJra866BeOKu1V2O8tvlB38VERhH8yw
	 lDqTOTcwlikm3J9rU81F4IyaV5lxgXUzXz+31MiBGwXVCeaVeL0S36nVITZf2E2k/M
	 c0SwKkcRLeAxkfGEna2hXDV/6V8aicP5zsfUBKnwh+jOuIkNPWtJvC0J+SrVe7qshm
	 XCcMXtX4W0FTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91010FC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415649357.25503.90788649324935648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eade3cc587486014b71f701d2568ffc69a4088985fe82ce5882caddc93208e41
Date: Sun, 22 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774156493
