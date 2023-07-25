Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697EF14A90
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 09:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4C8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 09:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690277528;
	bh=dCAV9z4PjmASWvddFe3zMo7t6uESG0H+FysMrMYy2EI=;
	h=To:Subject:From:Date:From;
	b=TZuKSHc70Ka13x8JwTEGdqBRgYWirEV1rG0536VCglv+g/WbpHVF07gNGuTbRumVT
	 X5cPyyfLATBQG4KCs3WPdJ9bXTYJECeSSp7ptVWDU1CMuOE2m7aI2Hsom4S8ei1G6k
	 g9GV16dnXYiYWScVXGfna/i1+hmRcg2/8oAKwbtGehCte34YhEP9TBxkPCEHIl6K+r
	 DUjrZ1Jlzsrao+FiI3Al3I3dD72XBVJnnUnOM4+DaAnWjmuWwq/97GvAIqouD6+IGA
	 p3si2lvoyNQ95fChJlwKa1lTMzpUvkP4ar3LjYgR/pRPXh9NHOTG7c7zP4l9fJDns4
	 UAuVFT3zbhIdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF35C0015E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 09:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169027752868.24636.8735236314687667423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c97f196d2560b398c018671e7a2bd56e4331bb52863bf266aaebf44bf6d70d
Date: Tue, 25 Jul 2023 09:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690277528
