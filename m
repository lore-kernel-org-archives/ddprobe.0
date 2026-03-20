Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D493CD8D6
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774026894; cv=none; b=lMcfTUAriNF+b3JG4sYXUDo0EpK4KI0lCYf6vDZny+ROlDJRuimftWB/X1gtp7AZkt2Z/qJyVn+dSW3dQFaXkDeBJjoQ2VAqLlKOz/51PnHWHKpYGz7FwzkYvHnOtDTrghfvndCXDFRzuTb8UFymdLOnzmJTXHIthPjrSjtgtvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774026894; c=relaxed/simple;
	bh=Cy+USq3LRrxdjb07pK6dbuTagnfKh2c22FOSDOCg3hI=;
	h=To:Subject:From:Message-Id:Date; b=Ys94eHHorcKkFMeZ30ZMKIlSOAXbxQJ/EDYxSGzxWYd3TxRq+0M/W9qxX8Jx4oldpu9XPL/QNmwwIpiX2ARx9VGJP7UD/lo2SP3XvnKYCt1PRqTC3gtitEcAtstg85wcR1XyRZsvyuluUv0PN+EGubO96mIahIx+JAyoBEgL7cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tg/otDiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tg/otDiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9FFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774026893;
	bh=Cy+USq3LRrxdjb07pK6dbuTagnfKh2c22FOSDOCg3hI=;
	h=To:Subject:From:Date:From;
	b=Tg/otDiY4a5Yj6/Zm/VSFzt52ZsGKWeMTuNYyBm13smAITduQN9M3LriU0rsMLox6
	 lj1W2BLsxRx0r+Yfj5Z1trLpaCpWMRoJV7EGZymnP2/rBsCWieb49Xz+mcwJ5nnTy8
	 soHSWNkA7ZM/wTYUpaJCAEWYqQlsUPnKu1VuRnufxCpKFGtcyuQ/0hFzJ5sWR9kh3t
	 MVeXAciRR0ldL6/oFmAZoMOAWKM2D8dg0bw0jbUrZNjFmrxcLCK+6K9YE6Fn/zKOZE
	 XWSAjizaKrdLeiszZHbmx4kn201IxP6SQ6lr0njfj0s2yKudJcq3jL0CexJu8mHTJw
	 Jaz93AhDfS9IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECED1099B26
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402689357.30499.7886089041217958286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06884bf46fd88e7d1e74f8b0f0e19d695d97f65a0585d911ae1cd8dd960aa0ab
Date: Fri, 20 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774026893
