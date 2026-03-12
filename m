Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033F03AC0E1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773344095; cv=none; b=pUP2RnQxUiaBqJyht8xVkrh8ReGvUcEKTcFciRz2gfs2diLOW5hXxgJocRdt+KNBIyS+9uLooPsXCIkzGMzfMAo9/3p5CeaOYO1NF5Cu3tOocvoQ+s+BnmMHSK/UeekG1HY2Vv+B+Xt9njh8w3giGEQMbkm1KhfhdBhPct/e1ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773344095; c=relaxed/simple;
	bh=1b5PEHYZbPjT+mzSJvNPIBK7PnIu4kLgyIgh7JwgHV4=;
	h=To:Subject:From:Message-Id:Date; b=R8QYx4amhXcYz34kmCQ5O7P6nmYHs9hYd14rXrprNpgm9yV7e/dB0QLGA6n9hkJ2ZOvz7u4jrSoNNWVel7aXnb4PIpcQUSEOSfF52P1mqioSUqa6aEA35zoDdbE8hBJ8XEIhdNi2GUPgjJx30glTtFksFk8U6BGClGSN5ktuVHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fi9NSA9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fi9NSA9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773344094;
	bh=1b5PEHYZbPjT+mzSJvNPIBK7PnIu4kLgyIgh7JwgHV4=;
	h=To:Subject:From:Date:From;
	b=fi9NSA9O+DFqmQtAOqe0AeQQCZAwlLkjbmK9KuKSkVoZ+D60SSs+as8kGUAdiRV0Z
	 pH3omsZikms+R+6VN3yNnP/oUBIKLa4ISFe5ONYVJxjiz5CqCSBVzMR/xMaX7N9BBx
	 jMnO3FKwOQml7Z7lz3tm/AC/vzpWZ4JnhxourRovtK1V7qcnutc28jg1QfLxB4DefA
	 NrMdBUPCW51m6OvNs0VG2W1vDUkkXi/2DfvMyQwoyjXFUYA2TnQR2K9ckkLjMIVRQL
	 h+O0pxN6/IZ8/Yd8IcO/5PbqWLaiiSWQSIcZb8aZHgTDWpFVUo2B81ZsY/csSqmL7/
	 UDvpTlDgFuPAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F43106ACE2
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334409358.14159.8197191396659374218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd35ce6b97b96926e897e6ca23252ce96b2a29d6190055e424d84e929112e02b
Date: Thu, 12 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773344093
