Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38C1362
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E802C433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669615854;
	bh=OFFwzHzHx6giRoW1t/NXYwf5FkTCxxyC9JWigtBTzj4=;
	h=To:Subject:From:Date:From;
	b=G4WT/64oKimK52AcD/uEtjJwoB6EEZQdpYiheM0widqz4CgJLXZ6NKjGr5AWKSkOU
	 J2Y7nSL4f1vZa1rojmWC51eW6DnMsjPLHH1QbiI7llT6NIJ/1vMtPjpFzVoRbUaK8K
	 G3KQZ4EeDE16BYZKkhC+D7oH3mzUx7LDJn96Pqhfsun0R6ratvZzHL+3ircV1OGXn3
	 obn0Eo8IAHxWD7pksCpbkf8E4KFwm/KccxyjYilsIMNbKGlARmP7su80uaarUEnic2
	 QzTLlz3oYlKEOThPWJ6A+PECWDfnSEwfFILvYXJ0PKcrSxQceG7VMVG+UIFLt9jFgf
	 7PlQEmYw5XInw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52762C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961585432.1567.9412791848854004224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc4729d69fe2d39b0e2e46bb0124b6749ee280cdfc5b9cc168b287d2c54ea19
Date: Mon, 28 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669615854
