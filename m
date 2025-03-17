Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BAB7A13A
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742253594; cv=none; b=c/ETAnATihL/iNwJXIsp6XqNQhapq2GhNbMI+p9iqILASrcUkXEoRvYdNfHpuVxH2/Gp4sa3WLGttWGWYiDeLUNAAFxiTf+AHct/QUT1OfLJAY8hi//BVlOvm0fUSnb6j+hfD64NMqA6nArz5HgQy0tw+LsUsNvs7s5I8m7aYz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742253594; c=relaxed/simple;
	bh=JXTxpeBYOS32AZG9H14bkqEAfAQS4G7xruXlewK+0Eg=;
	h=To:Subject:From:Message-Id:Date; b=iqpX1Xff3jUgiQC84ybmVu2fABcTHFkuOsA73MbYeHROR6kY+9kLthRUd/kkEQx4vW9HuctYy4ErBD/Ge45tBH3vto+C9PHsh6heR40x7dCvTxLcLcU0C7w+XMkh3Io/sGwVz6WLR895QonDyuT4wGRYuQRIFvD03FY64UQTSGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwelJkEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwelJkEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD97C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742253593;
	bh=JXTxpeBYOS32AZG9H14bkqEAfAQS4G7xruXlewK+0Eg=;
	h=To:Subject:From:Date:From;
	b=ZwelJkEsiKXun/Bv7ZMO0lyHLbpE8+A6lbaRwaIYUPPIGx4E4WbfFzhYEBYAjRTZX
	 xLCYNLLNstBlAJZmOHy3RnwK1R+BLtCOjzFGb/9yxUXH7SegXYuKF8Q9jlON+V24fA
	 Spybp7O09HuXMNr4bZmGjBhlwradgu/RQPOHbu2iY2oJhVUAIOI42qu/hvd+fWN3Dh
	 M52ghsg7uiO5vAYTQ/naDCpXZymknTp2AJuKZ81H2odFNpV71GQDc+zRvDckP8sbAM
	 F4EJsWoZSqKXwxx6GTs15znxlTznA5Bk4RdUgTqX30Hzq9kdGMEUOxGF/ZoYKPwHjS
	 jRTJJDl2XNq3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA3C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225359359.27138.9661159730787375128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057a1e8f8b7a9d365a475e99ca413d2a3a0e2ad2f69575bde35c21c205ead48e
Date: Mon, 17 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742253593
