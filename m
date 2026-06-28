Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEB31E0E14
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782651514; cv=none; b=dYNpa3bh/3+R6hRwGKYc1Yns23pVJlQBCrmgYOsQDzl4WCNZk/J0hv7eiA6XFBSj6Bb/mmnsUA5AozEF46kY9N1WgOAvym+dO77zM3CjtthdTkUOv9oBNgKpsSvGDtp4jmocsOsKyTFZsZemq8xk8UWor9GPAgrd7s8eLeqjR/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782651514; c=relaxed/simple;
	bh=RnWpFTunstnRQfGCa8akWdGDDhHmfB6X4+7m3M+ByPc=;
	h=To:Subject:From:Message-Id:Date; b=haZ3k7XdvZIQPYFPu/rP5cL3tKrCTm1F/4lP09TSnyWBbaLUhNu10Hm6Tbkdppyf8q1n2DjHWsTIZIuuQe4X6V+eWskgKgA/nCeJVfa6naFg7932IIh1CkgfkC8ZfWn5gZe/hWZlCb69I17n3JrzD1og8oWgQUNmKRHmFtW5x2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUzy8QjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUzy8QjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFA3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782651513;
	bh=RnWpFTunstnRQfGCa8akWdGDDhHmfB6X4+7m3M+ByPc=;
	h=To:Subject:From:Date:From;
	b=UUzy8QjWs1SygE7qIKWlzKHQOa446xznhQ54Ke5Cn/iM56JCDYRzNcuTm+zmD1b/7
	 1c3nPMN0N8U/g1KFJH8gdD1GQVI9hzEVWn9PvELfSpmsLAdBeJzPghuaKMf5AawY++
	 KbrYfJyUiUXoNW5stabKm8mex7n16sVGTO0+zuDB1SYnku/UV1WLnVBUUm5fs0yZVE
	 GdfZ3L3o8ajUNvxiQ5vZc/F3A6gWr5Li5jW4HhE6SMX5/9KZ2mA8UflOurMFFT8PS8
	 Q0PQQn2C1WpmODez+2uLd+1KxKPzP7e8sKebEsl0WwrF4dSex7PZuqNfSMRQ6uQd97
	 BWsjNRiurVYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AF1C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265151368.12124.5544437628026387547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0bc07cdcfd88bdd9f32f0b9e28d04906159e844a4e3cfafa19276d8e0dcb56
Date: Sun, 28 Jun 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782651513
