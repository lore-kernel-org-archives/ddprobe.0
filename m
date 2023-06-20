Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A32B174D1
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27E1C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687299728;
	bh=opw27I0szBgL4E5rxccMjPyLr3mL77E2cZkJ9xOZfNs=;
	h=To:Subject:From:Date:From;
	b=RHeFmUM/772ojShzwoUwlKgzhkRbMC8pxbQ5fq8DcLOnxU0Tt01oBoAk6ZPfzOCti
	 A1F2OcGn4bMggTD82KmD10BKGCcPkDz828/2f7piEq4lVbDLBTscBDe2egtROjfgLH
	 YJFaLRrVrZkCMUHaWHpJCtiPlhpWgrOpCU8AHCJtMkc5RbEloAbaSgUyfbgL4ZHw/C
	 o+1HQhrWtT3vxKtjMoxiAoBL7RDfC1JuYmOorW81Gzv3BYEeoRsGlND556dHqvdiQY
	 p92i8tcyXAsA67OnVZWyyxwnDMB04Z6hm8jEAPGLaqnSq9ngx7ozXrAeTAmR739sjj
	 ZK9e0Es47lXlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE38EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168729972870.12010.4984054519899801886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe939340fadd2415a6a2f3c6a6b1784c468f33324ef196cb33f0adf46a5c7c56
Date: Tue, 20 Jun 2023 22:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687299728
