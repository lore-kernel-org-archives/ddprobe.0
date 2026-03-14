Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08ECC2DC76C
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773479694; cv=none; b=gAOkytclYp2L88msgo0W9TzgWKeTDwNYmwHD+g5uSZ4CS9i3Cp5qEFCXmN1EGO+CMR1viYnT3rth1cuee8yJzFQTYUsWtRvGDa/gy2nTASQM/0n7N/NI6EmXBBbzZqP/G5jljUwHDWxrQtO6KZVdA70b8V3tymP9a+MHtexJF+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773479694; c=relaxed/simple;
	bh=uu5mBUktZMLM9IIweWA+6mlVlQu6q/qDMN4+zFrY5J8=;
	h=To:Subject:From:Message-Id:Date; b=h9XAXBxuv5kgjxUqhxUBDaULnt3og2blYdkC3LZbLqnO+LPutzMANnzQAUJanNOMtml0b5XVNe6jmB/oSRvJeD38m58qDJ+bdvMGsxRBu2GDWjHrFh8XQxV0XQ9egcCN4TQ/leCHKBUjitkQGYhSWr1W+ntrJH68AVxkINdbUbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHW6QQwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHW6QQwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D5FC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773479693;
	bh=uu5mBUktZMLM9IIweWA+6mlVlQu6q/qDMN4+zFrY5J8=;
	h=To:Subject:From:Date:From;
	b=SHW6QQwyo3flzX0K3bZmGCNI1axv+0GExj3Wyznh/mqPOKIn9sjVQNhtdNJsLLu/o
	 q/5r0H1mk6uYIX6svt6C3PlPsG8w6IGdoY//uaWs7j+Udt8c6D4aFLIsCtncUzMBCP
	 wxxYChpwnxSY2q21NnwQDsZ7Zf30/Wo0AiRQ7ef7nxooP0m0BhN4C+VEhMND3/yaaL
	 WDC9heCYcddRflBVRKgfQPfRIoPQ5d9GMAYyJZEj/dL1WFKgm0jO/29GmoUStwW+cu
	 nTD5enGUEpoBgyIl2wZjd0fQcWfmFH7ennL+gmR1S4DDJwMxPphKe9D5OdWo51UHcT
	 b7u4w8jxkR+ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D0B107BCE9
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347969358.22180.14921686394530565428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9685145a5efc6124cf36b75ff7a988f9e0476d44ff769b2b4cd8cc3ae638037b
Date: Sat, 14 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773479693
