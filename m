Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55714390
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA253C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689942728;
	bh=Dzk5rg3SzD8BmW79wI2tjwm9lrEJDcaEfS1z2HOMJ78=;
	h=To:Subject:From:Date:From;
	b=Q9Rocn2Tk34qsuoJDmMNr4M5FR+2Rx6rcQrywCoSEx3XpnqtToEy/x21fqHIpmHEt
	 5DbuRyI4Jb4HEsqe/5NwiW+bHf/pKnIOwv+Z0/yXEqpX+nZXwSXcj6wEkbrJoRsG88
	 6umL8NL03hsoBDIaOsSgJsZUshYX7uPtmkqLXp9GgVFg9HhJTCaWXH3zLowocjwWDn
	 yyKXlt/M5vSGDV4NtXI8ka2WRKyQcbIFxCsdA3fy2MRnlaeOnIWfJKkvteREYz8M1y
	 QJJG4G2gETaVQhksebjwoxhFkJ1GDjMbinYGwr5v2YmACm885lQpvvFPcmReihPDs7
	 uyH8vX4Pd/RgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC63CEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 12:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168994272869.454.15570301266737497279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40780b6f7576d3f8bc772eaf81b676ef65a002272af5c907009babba95ed694c
Date: Fri, 21 Jul 2023 12:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689942728
