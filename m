Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49B67C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71205C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661559652;
	bh=dd+YENF6X2nakUYvUnp8K+cseGqkSMwW8vfyWfPMG5w=;
	h=To:Subject:From:Date:From;
	b=qiLr8Cgi5vrpvJDD6OGylz7sA4J1DpUr0V8nK9/qvI26x1bWDPcikbK+KtUXZinVe
	 ufs/BNUXaZlZ6tVDuvsoQ3QTx4utRNbYazIZ63dGfMzDNose7j3CJ/7K2f9W/qPxyq
	 Keg90d+QRxU6jIy+fEwz2KMPXhhqZg+VFqIjdYI8EUx888ZGoqgZk7F9eU9vWLW25o
	 gzd4iSdUvimWUrCLe8nCk0zLl74g4RzsBtBPx6OEakNoXatJ8SpZrr/C60A95lcT//
	 TFbDXSBRe2mEA17Qhmd4TLsR89vR4RBSzFg9qtdUGrKw1FWjuElaxmflyuovtTYLVf
	 tJ3Llk2iv9cCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54736ECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155965233.25159.4543134744799650520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c27478f251ee7985b814855aecd7a2b12c7d807667a65e09e875e160026ed9
Date: Sat, 27 Aug 2022 00:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661559652
