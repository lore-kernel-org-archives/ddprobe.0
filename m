Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FC48F6F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84377C433F2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673566287;
	bh=pe937dTfdj6RLB8ABv1i4rmztBUZjGvQ7TayMjY1x18=;
	h=To:Subject:From:Date:From;
	b=ND/lOqitqDJthupnmj0+LBrLNqSR6mhQqXtT6aQdl3gW5Gl89QNvK6MXZHXFXSXN5
	 Rko8aPYOVCnp2UN9avkZyqmavjtVeW5BVNC8nlyurUrCWfzLKUr7k2HiZHwQMVYrPc
	 7AlqQhxqcLhuh2p9cxxGFQa71T52SD9qYUX9zoR5gjYDMKiEXqpt+Vy4+lWJejuGaA
	 WglJy3cWIAFQjdfK4kgVFEjs6Egh+nVprRunTqxz+lTc8hJcbf40Jtm8fcaGeldyGP
	 BkTkq1QOde0LsY/RJL8tVMFL1BGLnBP/ui1pJ0FGon10nRhgctDjRdSnJLtZiKXhLO
	 RBnGyApRbI01Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B29C63797
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356628738.11835.11473902284060191665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3f16fae3bdaf406966beb53dfe5b70d4265a777a01360b613b3d037a322cfa
Date: Thu, 12 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673566287
