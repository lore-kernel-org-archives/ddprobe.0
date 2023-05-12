Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAE1138F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 20:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05F02C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 20:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683924306;
	bh=kB0N/y2bu4vPFzSMNsbZ693y8Dc1j260tAfvy75hIrQ=;
	h=To:Subject:From:Date:From;
	b=qNJCPdWDA/rRKSBcwds48tHNud3l2++kQ/w60k8xm1t9vP6+Dkwx3rBvb/nU+vRNO
	 BOYDQ7FJzLWHg9QqL6MkxzlcNn0C36wwO/bkmGYOJp3kJJGo0t6TQwXSg6aYTgjijl
	 KYAFb1uu9miUWns0agkaJLQIT9Z7Awb+PN42Tg4pEDkiup8o5z7PvDpJJ/hSxOwDRG
	 LT5XuEjxRpDCUvVcogZLVrcBQlgRwkvSJMnbxCJqU6QcIom6wOZV83ThShTfIFyWkc
	 +LQHGS72Yx63+cfHwNsBIZqTmkUVaM6MyvZaTWVX1x9u1EfsU2WD/glur5+1alSORY
	 PsWzLhDveNYBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9EC2C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 20:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168392430587.18565.2809081166522220729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956e0efd5e8b79d0a254ea2413d2d1b64e434e209efda4c728f4116b3fda93c7
Date: Fri, 12 May 2023 20:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683924305
