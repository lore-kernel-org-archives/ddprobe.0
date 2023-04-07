Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0EEBB
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 18:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED304C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 18:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680893466;
	bh=Y9drssncXrbvfflKx9P/x5jCN0oyGruhz+A3d3+KCJE=;
	h=To:Subject:From:Date:From;
	b=PKbfT9Hfs6eoEl3jpBZYWc6lSPs6Pnpa9chSwZo9NH5vQEg5jFXkx8UJ6963q576n
	 OutDll2BWPstllbGDCQXMcTuSHhD4DGEXJwzxePzveWTnRiEfWilHJ1U8MfxmXeCGu
	 cfD4fc2FvkM/bKpNkOKLrDHNp3q7yeYYXPLn52iv/JdDpH9RtoQt/s7bU3fCSYoMc0
	 oM7df2Pr3OnfF00a1U24yFZgkG32oVc/PJxHL0sgKD+oxmHCwKU6w+1KoYjldg1lwd
	 TWgMDJgZlJpoquiEaL/5zzXOJ93fs5KB6Eva9PT04aaYKZ98nPGhpoLBxLns9iOFb2
	 UB1WKK79QaWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3E4AC77B6C
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 18:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168089346585.20550.4188969348199778849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59924974d4f4c759c031714869c6df01ab751f5a8ff482da14573a41bf46964b
Date: Fri, 07 Apr 2023 18:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680893465
