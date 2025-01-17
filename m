Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9D51AE875
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737157554; cv=none; b=txBFai+8FEAQQ4SNE2ltRH83sCrxr4h0EYKlZ5pHD9YCOZzF7MeIiALUT1DGzduxr6YvUCDDLKQkec4WxN37JhBCNHhB8K91cFIiGua6rIZP1khcxX7RDMdD8TIS4Wu1DgEJRGgHdlIzP+t5WDPP4UdYX799/2iTax7xWPqB4WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737157554; c=relaxed/simple;
	bh=6HcogLEZYrjuN/4f2RxUwwXTWP0BniuASMMCSPR/mt8=;
	h=To:Subject:From:Message-Id:Date; b=Hvu+UlCpoCMWaZCbpzno8fXCS0u4LUGHvplwUHXmd+VSXuYSr1JQyqq9oCdcj372r5McpGqeMzsZYaD/gYirTOVUlzrUY1A0FpLRPuONIRw6l+tsTd79Kb6wLSiUnYOaZlMjL+dvW83x0Sc2vagqSiGhSbXthJHlxbBdOR2Mzc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1y/KBd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1y/KBd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D95C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737157553;
	bh=6HcogLEZYrjuN/4f2RxUwwXTWP0BniuASMMCSPR/mt8=;
	h=To:Subject:From:Date:From;
	b=Z1y/KBd180rQqAiZO1+NU/yJLesNm0eTfJaQrSYCAMYlTKUT7fxo5DJjVj9k1a0W/
	 oGURLJzoSstZxm0AVvbbo4cn4bqdhaXqYOFMC1gWLr3y0mHxRgDYDiViImIRKBJ0LK
	 QAoiynuPs37w7zqvLarxN4oO49dnNkKXNtx+MTAQ+Vb2fwqeraD8kd7CFj8niXGUUi
	 +zqBvitE4Z7GHncVYkGhLqvpvhLl7jI7L9aJFJH0H2Aa6IH19qoiOWuu0eHe4OHe24
	 10kXWvCQVH7Rcycnn6fSabi+MTBcI9Bzoc7YyNfmh/O6/ozKDQqBBmFDZ+iobijht0
	 Mn9opihLp1YqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A30C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173715755359.20601.17216659493364543806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def8cd891fadc087697c6d8d4fc65547ac9d6961157764f8ba343b20a38ce4b5
Date: Fri, 17 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737157553
