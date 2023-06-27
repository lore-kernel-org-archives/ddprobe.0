Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6CC1308B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB338C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687894389;
	bh=AQDvjAI+890DXb6BkXsmejwa3KEZOVfhA12WO0cExkY=;
	h=To:Subject:From:Date:From;
	b=udvDYbmJN4WB4DDHregz9orqhda4bA42cb7urUc+y+zJZ0o0X7vxc6PVNJWKu9b77
	 JzdCU24RJCTc575MnVCSrgfYgnKvTy1/dSX1Otn3A1xWBusBFIdCMv4Y28yRJ1VnC0
	 SzkPFJgYs7DtBLcmkspP19Ln3IXUdV1RqJblL9Oncv60DRRsn2sLuiKWuckJuu46Ph
	 uFYSO9xSjlxSk5fxlpnRD0l3+sBgBSKq5A3taq4RGLvCvtliPyDVSydtF/clpcWqjC
	 yXgMSSwnj0QUTiVjhScisVjOWvXA9AGLzGSj/tQ8ejL/bsPYWYNvn4OhSg5q7SiP5D
	 ii+DfT5Qdwd6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0BFEEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789438884.25362.7605391101589033651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9201b5afbe3273d8287771ba0a86eabd0ee22afd80acbdd176852e3da91798
Date: Tue, 27 Jun 2023 19:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687894388
