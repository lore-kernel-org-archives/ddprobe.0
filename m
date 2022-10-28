Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB935E820
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C321C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666967454;
	bh=UoElcvrh4RKvmvpRzBQcIW5W/C26HfWSOmbsvfQMTMA=;
	h=To:Subject:From:Date:From;
	b=um6gU14S9amcXbzQhh1LBUAqG+6kG0XyAqgwiir6n6DBr+crZrjtGDNjQIG97mTd0
	 1AwboFFVRhiaHNN/uizitVj/I5JNg/JSbE2mKodDfWpMOz8Vzm3rpn9RjoKFWzoxIl
	 MLsNJ9+OAN/J5hwXpdAbPR9E3eNg+LRcw5C5WD/AqQlZvpxgaeLC5sFetuw0ESne/o
	 Mk67+0ofA1hFnIMIcQQ4a/iryUx0V0NFTYHVoOkAKdGbMt6HtzKYM27F5INb3ug4IA
	 oXOPl+sbUB9ZNW3Au9BYqXF3duY0S5aiZU0HysXHHJDB9uBBMYt/JSFVMBgaHg7ZiS
	 gyAhXHyr1uL2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55218C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696745433.32223.922683933165347201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e999074cf347c6b27cd615a24055ff4fe17f694f4d9f8b26b48b7eec545703
Date: Fri, 28 Oct 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666967454
