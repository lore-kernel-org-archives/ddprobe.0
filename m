Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4862CFBF9
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 16:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E638EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 16:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684168205;
	bh=gKiaE22bikd9Fr/6w//bu5WtG7vmsSrOPUlEwbETZmk=;
	h=To:Subject:From:Date:From;
	b=goKjarkWQyLkmJhexByBJDHPdGfifKCOF/57il8cF0Q+A7T6iLZHuAEpFGFpOu5pU
	 tq/74QtLT3AgkxUgLZzmTaNh2q2Y3ux2D6UG7XSlS8o2j/3z/bf/8wnRcVcs56BMP+
	 oyRL/THLRCxVckBFjG5x9SSULv5tQD8mjPZVmkVsA4JBMWP3jXiKlUGVqiXxBl3bap
	 aLb7gFCgTNjSDiUGgbEx1QbFFLxqyJ1J5O0SUJPQgRvM+A/pIm0/DebHNQVPechAnz
	 LyrN2lrcnLAntGYc2DZnMIa8WlRUaKnAnjIwZA+/wo4PHGMPCPjQctf3TSWG3SnWHa
	 B9txpmuhWLcOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A7AC77B75
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 16:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168416820579.24225.7831772863448178023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56c4d0803e86410fc8a1becca95d00e2e2bc6a760463993c41c16d6deed47a1
Date: Mon, 15 May 2023 16:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684168205
