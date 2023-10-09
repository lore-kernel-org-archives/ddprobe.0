Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65ED41A71F
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 16:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLr3PVyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB37C433CA
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 16:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696868828;
	bh=s5e0UM1LztgYrdFwK4UMBiJGQ6TxZjZKTXoLYamJ92E=;
	h=To:Subject:From:Date:From;
	b=gLr3PVyCF8qPuCMlx/tcPgVVMJFWN005sV2y+nWvb37OXYl1alAY4VnVCnuYJE5HA
	 d8Wi+9TP0riucWDhmlzGxelI8NAMeZY6BQPOArco+5h4Ib5qRW5mh5Ye4xB5DvSTJL
	 vOKmADoUynWugL9z5dZu5pRXWqt1HdJduNoda/9fNJ9vMBMpI41oh4OeujIOhWlCQw
	 gHAOaa1DISIEqe1wfqo77eqRxvJ3yJMSwbzvyaXn3PUyGMcO6MGN69IhoAVjR0Mnya
	 nIccBV7eWtF5cB2lIN4p73izouBvbfkTi7BtOlB671a/Hnd/9ragrVTPwezZm9fMTi
	 /PmIZ022tM4pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC3DCD6102
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 16:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169686882870.777.14178990950741190870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c59dbedb775afc61fb71c05bad445d3d5d60db5c24ab5b7d8cedb64cc1def21
Date: Mon, 09 Oct 2023 16:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696868828
