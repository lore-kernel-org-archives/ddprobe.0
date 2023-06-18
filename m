Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA411386
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 17:30:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95B0C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 17:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687109408;
	bh=gRwjG2KJub0TXBW925aeMLOGgqbMZK1Z8dVjDAAxq/4=;
	h=To:Subject:From:Date:From;
	b=EBO+xznJGOJ/tKYbQn8vCRrkRrMF2PjGDge7OoESPMO5zLDgJKagp7CQ9AkOWn/g6
	 Xe0bkNS2AVuo0H2t2qQDXLaYf1lEF2lI/cMx0SUmNedUBUrg3shSnpSXt0JW5KRIE/
	 eqIEJVsFzAh+dchJNafssOa+mmb4mWHDJigYISDBH8Sbvz3s3f2ptq3R/bPUswSUP7
	 FQ8AbLTYNvMqzkA7qJQU8oUY+4YXuHdDaOUrDhr5SPPk9OMC9OghXbwhl3+iLPCrkx
	 SUJlyKXQ8v+KeTnY8iqVZ9nji8Yxj/sEeKxRK+lDeCImlDMRcwIwcPfKtxOO1STKph
	 fCZzHPwQSCXvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BB6EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 17:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168710940866.17130.18127256419996400427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedaca8ad850ddf5d4e760853ffb6847a660c508bb86eac6d3ae2bf9d23366b8
Date: Sun, 18 Jun 2023 17:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687109408
