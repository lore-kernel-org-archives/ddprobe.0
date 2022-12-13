Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C28748C
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96601C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670952087;
	bh=ZHmUIanGPQAlqB/YK+uS78RbqKZYDxp0q+Jp+AFxjJI=;
	h=To:Subject:From:Date:From;
	b=PNRT2sCCkbLjeilMGO5OKj4xJSRBwGR4VpL2wInmPOTNCOEllC0wBSOyUXWi4LjMP
	 0E0sf8FPZQNvCQ/oBUfxPdCtusZeN2TehrHgGOTV+byaQLzRkbSygrwqfeHD/BlJdv
	 2qGanONa4IFP5OOJBiOKtNvTb4leH8Uacxdn6ztrpOqq1WMnpRhCX4ubDRd7AhjAnc
	 X0kdOb/DquwrcKyVyFQkr99qzDaB+MdrOp6eJ/Yf3nohpde80RmwbUvLOM9mgkqbdE
	 u5ZyAhg0jIojh0i/V9tOwKFcsJzXLTBndEWxAhD6gQeBySZ2urFN1SG82rvnJOKp19
	 PY83we66DieIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E99DC4167B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095208748.8268.15395723080677195002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a8f7352c124f8d1e9bb37e2c54d14be0c8731b3e01c2c906eeca890a08bb06
Date: Tue, 13 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670952087
