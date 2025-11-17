Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295B9625
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763342514; cv=none; b=KGGs7H3NHUcKvbBzPD0jSJGjo/KsIKmwL5CrR1dhBcVIDjXEDEqD3oV7DSZsnXAd6qWQ66CZstbKkOrEccvZIY9X0VAZb141XUQq0ZgQ+ma8mT+6NKrf5xgiaaSTkd8SoZk0s5RAefMxkJ3LdXsfPBntXjeVHMFEoYSVEMC1cCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763342514; c=relaxed/simple;
	bh=TO7uKb6TkrqjhQdt6t5dAEiW5rwws/ASEh8nBUIcKT0=;
	h=To:Subject:From:Message-Id:Date; b=G8A6PoEZ9dyqLvrieuppAhfNyE3e4oxFcYS8SxHHboigPLsx0wLL+hvmeXIdgpbSlvfRvwxrdajfgOwRZfxnf+7FBlzAv7r60JtYrwtBOy9UYnET3+zr5rBcaW8SrOz6mpNlP5r/+Am2Djb2ZFyiHi0GzP24O7pZN/YcM5RmwVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZxAD0lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZxAD0lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC04C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763342513;
	bh=TO7uKb6TkrqjhQdt6t5dAEiW5rwws/ASEh8nBUIcKT0=;
	h=To:Subject:From:Date:From;
	b=VZxAD0lcaLSiUtnlA3cmpyKEPAJKZorM5eKXAQW1iBwq2cFYnXVjTFxO30Uav2g7t
	 rpiRZGrUg1mcD0Cj9E+OD+5j2rHjmfEczrMZWReCtwl7A88fgfvSKeQfMmqBZJhn6H
	 Z0tbEX26O2fnE+2Yvbi64f7DnfBeTXhrg8F1u91XLfyFmgZRxRlTjF7xm5W93Jfcdb
	 uiObL4hQFglBRlVtzlWBikV/prIGhpj70HL9kVtrMVJ7Hz5NtBwmbnS2BWvRJ4NcuP
	 zPKXNJyi+gNU4Bna8JE2IbzdwffZGbFtNK3xbYFM4It/r2xZPkAYLb1F5c2jCD40d8
	 xRSnSaQD+AZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67E4CCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334251366.12188.11471124462693294650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a67efffef59dd2efdfed29cf65314c275bf1caeb3ee5f51da43928c7020119
Date: Mon, 17 Nov 2025 01:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763342513
