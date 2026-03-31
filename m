Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318D83ACA72
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774993494; cv=none; b=t6AASWmZToN0Xb+ouNkghTVpqnQm1Unz8MuitMKZ9frEfG9py1LufNJ6EYDrvwAo8sIA/F8bh/Ea1OtBeg+7WrPGW7reGBzJ0ujlUe7d0cifF/5dAwCFgMyLAI8WPHfis8ZFN6CH70kOk/bCBuingLcum0QMZAMDGRY3gX1khBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774993494; c=relaxed/simple;
	bh=OyMsTBPOXSJ5fQiw3SKkO/HMUomVDktPQlwDcWKOKvU=;
	h=To:Subject:From:Message-Id:Date; b=IVXLmXrP1dBVjzWypy6fY8kQabwcVGSQKjNv27R8UVKLDyAYQS4mu94SDH4tzOO/h1Pg504BpNJ0OsguKPbncvSdJxiErNYbrNp5abfReLB2/hZnT0txHgC32WsGSBIeQDBQJkTubBm8Y6PzrVVvcfTESaJYHOPk9iqMGu2qNgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYQ7jNgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYQ7jNgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCF7C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774993493;
	bh=OyMsTBPOXSJ5fQiw3SKkO/HMUomVDktPQlwDcWKOKvU=;
	h=To:Subject:From:Date:From;
	b=RYQ7jNgV9LSLTr0cJE54zQIqkrTLbDCR/XBZk4bMZvMgXhrU0aZFrpMHs49x4x4CM
	 Y3t5a+PUtoInlG8Y0oCYR3PZcTYqOmQ8O2vY+XeD7Mx95ipi+H3/MlXk1ihA803mbH
	 efkXb8ObDAeCfphFQ8Yynl8fm3hYbNkuyDqhMgJtetYkJp6yzriG1z45mQtKjIrd/p
	 fs3Arz2gXcZL2ypB1J18LzHd89hUnjaaYR/Mk/xpPSmJnzf+XLtnuwAoY9wuQzTixq
	 79eN1ewS3eoSXfQrUyuPERbb9HZPZ2uVBse/kGkg/nkRQl98tB4adqtiL8HuSxBlnV
	 Pc4h2HrwL2+Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DFD10F9304
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499349358.30139.12631110198753380065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ddddc415611e4a972f28591fdd39082a9d34137677dd3f3125dd8af23e663a0
Date: Tue, 31 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774993493
