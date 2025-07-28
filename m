Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209692192FC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753691394; cv=none; b=JXH7wU5IWhjRkJNoQ1+iR4wdFkEaYoLQjw3wCG+BGnUdXskkS9qg6WLlCOtV3jeEDINukihVuNTm7xfg2QsYdyPD8jsXDF4ndLuBpyK1Wefrk+6RABwAIBK73dfvgduHIp3XhRd2AoTKl9qF7hzlOosda0qebUwBVRjJYPQbmD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753691394; c=relaxed/simple;
	bh=5RIxg4MKH5VMMHpAcpJBKjdaMdqvge0Mz7GgBcHnZ3o=;
	h=To:Subject:From:Message-Id:Date; b=Ve3DxwLOHBaNnJvUxOEnbuHvFLJ9l5p32wuSYhfoys2h73WDD578t448cSUTfEEY37yY0fQbCRAjLQIKk0eYjn0K+679za39HtkdJdtB1aEeGWvXNOuUg9uiSfZSAP3xTRAdcmRgfzB0eTsLt5+jegtsJEvTiQRoEVNfqxFvXAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPav4QXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPav4QXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEDAC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753691393;
	bh=5RIxg4MKH5VMMHpAcpJBKjdaMdqvge0Mz7GgBcHnZ3o=;
	h=To:Subject:From:Date:From;
	b=VPav4QXdX8SBGqWk9fLjyok7zDL7M6tnk33wvn8w28+YAl3ovkbSEWnYogXWUfYwv
	 TK+rUKvKHGOX73BBJWc/iGc1YybMDqMod8rCC/dyTxv+lAdUjr8R9GTRJSbkSiERFT
	 o1X9GnhmGm45+ZNZkOLOGufWqADa8rjH1nu9tyDMLRt4mtq2xz2FPQ/IadDCMgezJm
	 dscH9bVrLsI87WdhX5Gj8xJFKNExbYJwtNdjdyJjXA4Yzkkh7/FnXc+vUk8P+mojw0
	 aTk24D4haI9/HGjxIjHHi+Qn+wjBP4GSMURWqh6rQFm44GdsNr5Qdj3R4fJBep7twn
	 IidF3SEcAifoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9828CC87FCF
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369139361.6535.14995303910116057732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87d0a4bea7e895384e4e54e26166a1858a9ac834976202f413c1ce1731610fb
Date: Mon, 28 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753691393
