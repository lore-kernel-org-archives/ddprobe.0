Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C4523D7DE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770953694; cv=none; b=dNZZoP9w9pV9W79juxMEfhNwHcJwHFCRpMCU/7W1oziyymfoKOYahipC13VrXBZYtZ2RD1UsuRvE0nkcSgM4tknGutlMjJJaSJ1RgI0hZDmn4j8quhLG6PoprihE6QDaQMcTdO/tM+U/9hIJklAZ8nl1/0n5HFDi60GWIQ2KiqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770953694; c=relaxed/simple;
	bh=3JWMYOfCFVvtKcfQ4oUpqtgpaCzpSZv455Yf9iaUrNk=;
	h=To:Subject:From:Message-Id:Date; b=YIGMVUTCbKZYGLLBClKnG3WFMoOIHf/0GXx6rvxc07q0LqnZlO3fvOPwugdxg3iw9FEN+k+XwLtYKvmJRJPdf3LZzpNYDU4Dy5CyUS0PX4gVNTjkcYA6oEA62ZRa9/nNHQTAJDpuhjpYpVmLpL6Rp1y9ugz2nouJo9p+LlOLivE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7jpXCpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7jpXCpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB34FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770953693;
	bh=3JWMYOfCFVvtKcfQ4oUpqtgpaCzpSZv455Yf9iaUrNk=;
	h=To:Subject:From:Date:From;
	b=T7jpXCpv0zD6w03G4v98rCWv6dtXvpew10p5bRpHLjUVvEc6Nm2Xc0XQOz5vGV2UF
	 480F9o/GzLfRE7kRAnSPOtHoVZFf3/7RFqnHJdDUniSca+6WS9HpwQCf+1ncOBpkkC
	 BK8z3Y8PtrfBGon019C9X25RX1IBKmrshThPiAMZxC7ed/IL5qdASpD8hxpcjv6SVe
	 Mg4QZpeQXsuTBmeQ9ac9dHBEn+At0CgKF00R7jjxcMycJB8JCx6qS/udKNK/PJZr17
	 qFaZxFvv+ekKzRKNLRbv8SyDxdPn1iAviUznZdQMW4vctPqsCeQtbmtojKMHx1+K+E
	 06xIoFhrvkw7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E2EF48C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095369360.32333.15072541543604596720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ea871a428b238905363ace4709117250b4fea0537d6d3008bfc53c0cf68e65
Date: Fri, 13 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770953693
