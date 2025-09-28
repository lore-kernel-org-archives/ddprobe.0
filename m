Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9E342A99
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759078194; cv=none; b=fF7xzQQnL+hH76BBfZoapQZ181rfhvDkxDsXC/Q7RkyfG6tAcFmk+cxXA/yeB+cX8Lbw/MG/kdNXnlZEdUB5fB/+bEs5d3lM7R8NuQ7Mr2DoiW3gd7SeI6nZV55aL31PNtNUhkesYBC7lbU3VQEGtl0CKn9YAONX3eir05CQqQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759078194; c=relaxed/simple;
	bh=oIztxW18GLVjCh96Ka6PKnur8Nf4jwKXXstr80OujEs=;
	h=To:Subject:From:Message-Id:Date; b=hqcfWoVga+XCJJfh7iLDtYDWTllmuYuePXEWrKRnbEtS+jnJmL5S8RQkKEvtRc3/yRIKzJdutbjnDCHILbxeyT2g13FIhWxaoBTypmqQr90zFfup6uCrPJLGp0L3y7K4VmW5JTh5pINSgalTerfByZhoGrc+V+I7Oxk7Dxz4vxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tM7x+Gox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tM7x+Gox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07EFC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759078193;
	bh=oIztxW18GLVjCh96Ka6PKnur8Nf4jwKXXstr80OujEs=;
	h=To:Subject:From:Date:From;
	b=tM7x+GoxArfPVdRalEYrPOZ7owwUkZWCHFDx/JZXw0MJhb13691WCZpNrMbF5dSLZ
	 vBQo/JBbBfDYvxv7z6BB3mINIsDqNxlAbP4SI85LTBAHFydPXiCtK/iBeBUPHZAZhb
	 yU1dw/rkZ1SJoFpLy4lWu9Bd0atHXNidtI8v6i7NUSMq/ZTCAZV86UETGjX84WQab4
	 A52eBOKHslOeaEIab3Sr+SHmCPXcYgU+YFNe0kgXmMnrN6UQJ2YvubKE1x1Gg+1Pyo
	 PSvEIdk1z1aGSIop9XmAGPZNmMvxpcYyZKLFIemHg9HehU0KkcoZ+ehUrCpOYhjHjr
	 aBNBCEDuzB0Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2FCCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907819359.22379.5241789846820008350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947ad5780ab699019f7729c6dc438afc67e4082ec39ba385a5fc0d6ce085e550
Date: Sun, 28 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759078193
