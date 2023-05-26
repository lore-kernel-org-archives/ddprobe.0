Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235A92D25A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 23:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC764C433D2
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 23:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685144765;
	bh=Z4FOxmw1O9VPmiHUY8qVkt/RMzYiNQYlTsgVzofm7Wk=;
	h=To:Subject:From:Date:From;
	b=X3T0CNKSqdmLJOpQOmXPeSbwI8KRTnztQNHgcPJp5ApNFzQAPUuXDcUySELFCNDn3
	 Gcc+1vTBYAB/px8tI5QCAYr3NaicZh52/Ohp+gRmomkmY6eEJqX0wB/KNNx2mYJNdm
	 Tsh7uVghfWo1IbOnCoavA5SlhOx/zgqsuogZu0oUNEkb8+D4yjEtDIC3A8+755iDdD
	 hCAZGzHcWRniC/oiAEXEJjXNCKRnWptVzrlC9MYuKcrhAvWPRZ828iLpsbhiHbaSN9
	 TrGesoEsACq2MvpHniYG7ej6z+X5njk5p1zrHPWWvxa1oVSrU4vn0ESuMVPhyIW6UU
	 2/0emRr4Tad4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B542CC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 23:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168514476573.2564.11343885663117051856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c312a39ae421cbdc27135a9b40fa535e6641a9859d56568cdaed7ee73a171d04
Date: Fri, 26 May 2023 23:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685144765
