Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E1C101FA
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00E49C433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696425369;
	bh=DRNXITbuwOkM60teWTcaYyQMfXIPWSlG/M7EXFDzJdE=;
	h=To:Subject:From:Date:From;
	b=BGCi56N3Rd4SIUi4fTiAf8cNoOj1jrspUihjj+gKzjD5DlVhgkO6Ehnbvy1wkOjNq
	 H/huj8eXkCSp942nZbbrG+U1IjWXuK09aCsFYNphnBnAh1ABBv3T3b9lpZLqcmtxkU
	 cS+6/aoKabgUz6ZwNP5GaQR6RE+dnN3vLzgVlQ5/jgPK+zTLA0/MyKyhKWBsFH2Iu6
	 0WeCUS0EPO7/s7xkEQhG1GVmJYI/xJye+wfwWSv324gpD9PgTQaov3tO2RvILd5jpb
	 lhc2y/FlmA8/+hNx7iCwmwTrfO7Ltm1GSzq+akTkLyvlsS4A1KBxGjRy0l1DXRmMga
	 RW6LB9fRNnPPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE4DE7B60F
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169642536882.25382.16710517902957368151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b905a6c51e5a1f2f761e076db3a50e8838f0834f5a8cd423265b903de2c4534e
Date: Wed, 04 Oct 2023 13:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696425368
