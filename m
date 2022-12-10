Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB74A813
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A8C4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670691087;
	bh=dDpEqlQRUCCeI6hgtQFkfGJScVrDJzI3nJUC1Oj1UeI=;
	h=To:Subject:From:Date:From;
	b=VSmFzKU/k82HqBR0+1Xr2HuRj4kLSKVl4x1w7JFPegV9ZVb2EKHEh/C3sJ/f0XUPQ
	 XnTrg0xHhXGZ8ssClnqKeHCIWpIu8DdIkwuhcjUrVwaVZ/Cgzzsa/wG5hXtN7Os4Nu
	 HHPKVlyttb4P4oUdGKgTOkbt8CKJ28zJGnGlnzURf3A4yoEcE4CMW50PQAUUFB0K4X
	 z8ok85YzRPFRgInQ00ckTfvZjLN//KA0aPAWIc47vn/5Az1L4LGv7kkR/8oiGWPxmJ
	 OQC1iO8i2lObxtGzpbmezq3fO029hmnLa2xr5sWwiDOdt1slv9xlT3A522Vp/xpXhn
	 FRyzaBJc4ARRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FD41C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069108740.31111.7148559569728819691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1c6723a378b27e05a3da7f30539425d792b1f8740823bf995b19f9fd6effbb
Date: Sat, 10 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670691087
