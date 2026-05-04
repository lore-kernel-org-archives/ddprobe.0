Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C1D168BD
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777869454; cv=none; b=ZNBKFtfbJsimgFB3zCYfYGXnTgEJZYUFafqDH+EQvy9/rGsiEQbGDPdD2gWHSb0TBdun2EReHtT7ARrvXnBOfpF8jGNc6FVW7GWlyFvsPow4vTx/MgDx510bx3PquCilPRx3Ir3tsCogY7iyP2Le6f/cmPpnbY5C/MF+FtQE5oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777869454; c=relaxed/simple;
	bh=H5EHzsMl/6e2dZTd+un8ooEGu4AMdxlm0WOGtiqsubw=;
	h=To:Subject:From:Message-Id:Date; b=I1EKtwpqgei1oweSrHBuRYU0pDcLZ5QoXzW7YLqqg/uuduq5eLrWNRN3AoXGyaRpcDNK7lhidKzJ3AzTwG5/SQbWvpRYnPH76PXfvD2wrPTg4sW/bcCkZitFZyeDb/xgcTwKtVQ1Xhfdm9biCVyzvR4mBrprALIfOLcaVtSruZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bm1cXz+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bm1cXz+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84BDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777869453;
	bh=H5EHzsMl/6e2dZTd+un8ooEGu4AMdxlm0WOGtiqsubw=;
	h=To:Subject:From:Date:From;
	b=Bm1cXz+FeM2a25KCX3umGB+wmLt6fgq21fxPrZJj52OwpbQNKcFwHoYouYfU3jVsF
	 ia6vQQEoZHZQZv/QnWp9y9G81PG98e94Yzt+ctWz8hkObvLdUMRCJ9nbUs9eADCexs
	 607g881Qj0xP42x7pX6+xlI0ii1vl1nYxOuNeQnc4VE2HX+ZBg1PW8Nq+WOzbf2aVz
	 q5C19ip4as3gUP3Tzn/ygT/SS3/UbcR25VVTm3QHKvxPtQ8nu/cmLKXLcRw/RuZKfX
	 7tJfIHnOwpQbMRXOQB9gtkMK52SP+t5sRLdOiShp7aOSdklqgyyIrX5rZfRPzpG7I/
	 D+3/qTxY/TK6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E3FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786945368.17043.2443342789372770373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4f1fce356b52d9aff98d2e55dd547737151005920561f6ef46bd9263b60663
Date: Mon, 04 May 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777869453
