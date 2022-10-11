Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C459623A2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A6EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665472853;
	bh=Dce8IeOXYdYlykLTk3Hhjab376SeETYgyNu6i9m1RPQ=;
	h=To:Subject:From:Date:From;
	b=gdIj4oYSEMV2waeb18/vEIhks8JBojJsiiDsiBpVZVRnpbsAbKUYYUh22Ixv3vTE1
	 yZ7YuosEhparDgrVn9Pnl8dbawT/gw1romqI+zX1R2qd0Ep/JiCvcEeAPH2oN29771
	 g23dKFNF28bgchD40Dzo8DY36/Kk0Gz5SDAJhqRwpWSFZQ7OLhd5YaU/ACCLRsLyoo
	 xPUnFnge7iyPtMrucwZrG9VmnsIRGKuUckB70xRaL+AGY+9Rei47OxQg3RS8zl0K+4
	 aAEIn6mdTlb+eoxK/LwBsiGOtUp0xduUwy2jfvM+d2/oxA3Mq6VAZupPxuzl31hVSX
	 S+DsFS/nvtZhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 599B5C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166547285335.22048.1287359806369354150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03027429d5fbac8aceed0535745cdcf5e57bff1875a43150c05a817727f4750b
Date: Tue, 11 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665472853
