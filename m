Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1885D2B2D7
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766468034; cv=none; b=D4kuckPjgn4xJAJvUQ15HgdQTX7XvEKeWsVjUhvLgi/1qC95dGZKaVdb8SflZbdt6Ybuh4L0nYdXE2Qg57SNffJeaI2F1DCRrofZ9bwxBTX8fMeyTFMTKgM8kSbvqCvw1oLlahzlTHXJwN+RSUrW0Gn6rhihKfczbaQMdoUuQYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766468034; c=relaxed/simple;
	bh=7kWANcZOJjb6fouiUR0i943XN5tL9QLJNDOLRrf79iA=;
	h=To:Subject:From:Message-Id:Date; b=BrLEBE1WtgbZbNV1QXniwlEiC9wc1pl058ApL6EqB+uXWmmKXr5f+kcN8IggvZ1j1jULBPGkzJ29AF2l3gpeCTH5mvaHt2WRNAbYuj9X0aJXodgma/3JsnRcMIyEovS+Elue1BESECcRGpNYS1Bst0QGRpO2cSYjBlVT8uIgfBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o88gmPFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o88gmPFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAC8C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766468033;
	bh=7kWANcZOJjb6fouiUR0i943XN5tL9QLJNDOLRrf79iA=;
	h=To:Subject:From:Date:From;
	b=o88gmPFCN/LuZNsLWHeo6STe8JcOwrLB7yysaeU4oQZpo3g9Gqpm+i/DD839yjEEw
	 EIhy+m+aUGG6tgtGgvsfp0i3BZyfzWOrGwTqqyj13nan70g3VdFtmdPkSMF2USALsY
	 r//WS8U1Yno37e0gQLrpcMCu0iCg6CrnkMYS+VR84J4lqZgr/ravvbcLRMJ3E7wCuw
	 V/LWpaim+qh68XJBBhyDug6VrsvNV+Mga6mnM7nZtZx7QaT6Q7PxK4X3D3pPlsehcb
	 XNYLTWTzVXJBESWtm0KHX1+Re500VDM2Rlwpjilx1cHQmPNInApUbXOyLykfXSUFh0
	 EMshEqBeUqzEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F35EE6B25F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646803357.12389.13611010901161786520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8458ec0331066a8d1e177fefd380f00f6560c49e7c2f4d4bd6230b6b271abf
Date: Tue, 23 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766468033
