Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA1317EC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98A7C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688097188;
	bh=yLp8fNUip7USoNyd3QoFhlBvmg4KWFQsMoZpXpCG1CI=;
	h=To:Subject:From:Date:From;
	b=KvZIkgHlE3/X3C5FV6PW7dDDVS7n/q7fH/KZY0tM8wCHijAEiibqqcsvMZXQPj+u2
	 fx8TrV3RPH9sTyOfq58thSAt380MhRp2CxEmysyn1vVOvZdjt9ey2ju8aXbBaJ1op9
	 BIJ8/Izx0FuCgw8zbxkBk9jbnKFtv/BjSE5gioSq0pJJtSvkmJEaf02/FppDL8vWTT
	 795g9tBcrBEaFOjR6mulUtWz8OPJgeZobsSiINieWBC79TbCQ7eovFIUyU3mkQ45bx
	 +Cw047zvFXtZU9+NY8xaH9tS3dKh8UioFS+OV411JWY7cx4i2ZmvWC1+0JaRUsy93B
	 69mqaBzMNEUYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B979EEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168809718872.7175.18112597447549598117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eed30fa49930811c4b547eeeeb84d59a662b4693774523a62d0caee6f460550
Date: Fri, 30 Jun 2023 03:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688097188
