Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E1F375F95
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774145694; cv=none; b=rpj92c3/4fRHQMwyyhnO0j0ZLuCKoJUqVoFGkiEkMLSosN4w0AR7wa9vsT+Mr0F7H26Q3QRJiSbOy61dIQmYGt0faPNSnsdhcN2pwjOj1k8s99o3UYWMiByihJPq1F+umsh5W4syYTCTGjV/8OisprAjpyei3/B8dfoedfVorxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774145694; c=relaxed/simple;
	bh=u/3MIFlzZf9v0Ch2AmK1ilNDFGGaI9dqDFlGGbu1r3g=;
	h=To:Subject:From:Message-Id:Date; b=oOR+2Stmgp/O2b4t/4tGCgqsYpWr+3U7JdtOzJ287r9OtHoQQlSPiNSI97k+s05EQOOTaZsvGrm3eGf66hBIq0VLQ3QjebWfEqldvMNEEuECmoC7DOf+bHVvgmv9sPn3z4WWOZSi8vXsE0ZA9RTyFfYi5qErPvhNlEho/WQ1aps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSdGJKnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSdGJKnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4A3C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774145693;
	bh=u/3MIFlzZf9v0Ch2AmK1ilNDFGGaI9dqDFlGGbu1r3g=;
	h=To:Subject:From:Date:From;
	b=WSdGJKnz5f9qf8FTlku9YnXl4ZwzPznVu3J8ePBpy52/lJUUFHrtUvT1km/prT+KY
	 nOMBl+Re2d5sjRy9lNGewuL3lXgM0yh/ooAA5hFw0Ker7S3H4PwoZWIP3JfJkE4Sbv
	 ydlQHajl7uAHYCwQgN61viQSYc80wVtGu4FxVjOD7/Rlb1vWyftJSTPVu1Zoe+nbm4
	 3zZXhDVmYIqN9TQmM3U0+ZMepey2g2ws2lP6eV4Y8l1kFDiWbkpgUdE8NQwtzmUWwh
	 sgOQqFY2hHIY/vVrdBsxgXF1c7D8lTw+nv4v/3u3jwm00jtbU7SOWFg8fiCwdMErNR
	 oIXoLf+z25MXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E6109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414569358.14478.4387982689944728923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64005ae6b6bb9c04934a898ad788e760226c0b8cebbdf1cd0e4810532a5ab5e2
Date: Sun, 22 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774145693
