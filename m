Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B54222370A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782515314; cv=none; b=o+dZilpK/sEFP+7IwjZr7Zt4QDU9Z2V5j5gNf67v6XtXoJo6sL0BjWKqaXB/Inmqg/IRai++g4vLxSAIXNoi+CQeust7s4md2UYfb9yE37IIKpNSaFtOnTLxDTlaWVFG7voX7HD8tV3Ye+u9ZCJnZtet2fVIhNo8bZm3qhFHyOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782515314; c=relaxed/simple;
	bh=NglUzSa+j/qXLq711io4A8ghTnuonCfpJ4tGIzSKgkA=;
	h=To:Subject:From:Message-Id:Date; b=DZAPdC7HJcOm7fln7weJBOE6zBYPZ40PNCL/R21g/bQ2zaFCVG+K05jUfiJGOe3TXck0VGrS2PbKhU+X1ksc4Pyl9gG1UUAL2mnv9Nl4Q5w8TAwNnOQ6xfE1fEWOpm3hg2eL7yLVRLt2AHHxEUleRkTr+kUfINnzFCC3Rqvqk3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBZreKqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBZreKqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8D1C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782515313;
	bh=NglUzSa+j/qXLq711io4A8ghTnuonCfpJ4tGIzSKgkA=;
	h=To:Subject:From:Date:From;
	b=YBZreKqG9H4cz1EBLBPzQicSSf2aJdjxgqfrqgXBEkowSAnPVHCOWpOSCWCRPwX4E
	 Y6+A3Put3oGSK//Y/hsrvps9v8S4ULiSfDb5oJuyS9P4I1/yckR5YkwgBMC8x1SCO0
	 P9sK3FZDMjlG4joTa2E+9u0LwEpLQElhqmAB7OudETdmD+fcXfKycM6A7lFrgrjOS+
	 pYr5TxMkVJ8qKaNvKfeuYMOkwjZjAQpEdNXXXkbUDfxDLsJ0SGf+vpH1XJsxRnSjTs
	 +X0xFfps6Zu4c6X654ED8tzRtl4eWNsJ7C4Umm8n0FrY6atGj01Vn9Jdess+xmrsk2
	 RxGg9vOY3PZAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A54C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251531368.32753.10006226552272835488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98df69ff97ce2202a988c9613b4d5476c92b75c023d724ee884ce30bdcd94d2e
Date: Fri, 26 Jun 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782515313
