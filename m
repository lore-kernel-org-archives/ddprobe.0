Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762FA12B6D
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 23:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E63C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 23:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690240928;
	bh=OKPzEL++8rJLUytcj984g7SS6JsCdH2huk6iRnAT/DQ=;
	h=To:Subject:From:Date:From;
	b=jMuCDD9ZP8tkM8/iJCBw/e1YiBCcw0rKBeXkIN2pDeDnbZlWSXMxJeVVdo3Z0hYKP
	 AzizN10hGkrt/4VF+Aeuz3TM9w7Zdiqzm/+/XWo9LLZKX3sbnM2usk3pnb2wtpgEyH
	 Q24B+EyJy76x7sDTkEZ3p8XfOOxKBP1DbXp6T3nRkEtgzLy0gQ6LIPCvRGHSXjcSTE
	 spC6WnaeBBh6f3fo8d+AilR2uw1xKfPpzyZngM0AuY7x+PQdmQLlAj0qRMeID8JJQB
	 Gx/FO9CI1/9hmtu4o/ng4B8WcjTuJESG+KX96CfRSyTHMTAjCmHntXfDyf8Da/TPNG
	 qYmGH+d/TNVng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA90BEB64DD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 23:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169024092871.15366.1554470265625267930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee50a4a4072f9844d8302ea147a068c7ed17176052dba9bcbb50339e16dcf679
Date: Mon, 24 Jul 2023 23:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690240928
