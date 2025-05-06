Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309C3249F9
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746560995; cv=none; b=jA9/n67VULOmrtIlcZh4g8QPSZi5u/dAuMipu7LgStbGU6Lu2oGU9I5ZGsKmbh8YQ7hN2LB09Jmd/OLYVfNWWYN9wN+Ta5hcKNbQSEhZ7XG6TaDqFNT25Rq2LjoZgnUxAO1r6ftln4N3YFPv6EoIwIMfSdnTkrPFYDoQkWGSCFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746560995; c=relaxed/simple;
	bh=MMJxGsonTVVlH3xbt+Aa7aEjbtwc6sAcfO0bGUrc6AY=;
	h=To:Subject:From:Message-Id:Date; b=WUL1y0EQsectzDhobmKk3p1w6u3RCwMf7MfJT7zWU5eF9ECvuBNFmiRMfP/FdCdAW7rLB7K9FCvOKQFqpLUL73wtuhNfAjpAVfk2KMLAnNjtERWBwQJNYomJV6ywkIm840ftrEPOg5Qj8SeavItrKVA4OgAzBq015bzDAazEgrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX/N9+KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX/N9+KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1276C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746560993;
	bh=MMJxGsonTVVlH3xbt+Aa7aEjbtwc6sAcfO0bGUrc6AY=;
	h=To:Subject:From:Date:From;
	b=nX/N9+KIiTMczbGokIhvBprYhI4laIOiuJhgAY1FSqkszf7lonFeGIKxgIyQgpb6c
	 0m7bDIUr8UNl+n05iBvaHS7Sg3nBK8RgOcTsCkPA5oMVciDEpxT+eQfEVWF7X5iDdb
	 zz3SXc10801nUjL/PbsGtkrdQQh+vdC0xiKfLy87wbyDCj8NwOC52M0ivpvkYc6oyx
	 JBYeGC+U4VPMJ9UspqLpGZ1QJQL14OZQ7EgaVS9V1jg6rkdYKIUjX4wrhIluY5xI3E
	 +UgYIi3m6501q38UOBQFXEOmmZ+pLPvyORoY1RBTepJiLG/FwtW1kxDORtKJowdX9w
	 IAXXmMWgouZ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E745C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656099357.14554.15715055318777518519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453bd19eca6bd58450daa628524946e4821bc0867d69390fee80d25dd8ad90a3
Date: Tue, 06 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746560993
