Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387D0179
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 00:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF108C433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 00:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680308585;
	bh=qO/66hYRP7v1LQulmWhNBTcNmQ4CbZ1BXYTA/+klxJ0=;
	h=To:Subject:From:Date:From;
	b=Fz7Ob0tZK0l4/fZSHhx1JVWTTH+/qyEGrSUnMC+/jGeYNcUeOaMzTizKJ9Scu3Mi/
	 Im/yY0UXJsGQXmSGTqCRxSPIayIdZjDGg/Vp14MKV65UsusOU4pDvrmbUWhjBIZuEk
	 Ja7Lxm41ze1I+2h/4jp3eNIRsK5R1QmM9EVOZGsgSihOT5YSOrIs9+1E99pMu41wAI
	 RXMBfCs+yGlE9+MEy3/iUnF8MMA2GRXhJEbg+oKzj3112XQ9gPqYMVHEqKQ4Ihsi4M
	 KBAdUyd+Mb3xoee4WHq5RgtZLq6ZxgzCK+4ehPHZLlJjIIPfcKtR94V28D23VYjJgU
	 DXeGBq3M+9ifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE656C761A6
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 00:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168030858576.10950.1994450376084229733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf7e75a282b530ecd8b22cec482465fc4cf799a76cfa60fd2ab0bb25c8319ea
Date: Sat, 01 Apr 2023 00:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680308585
