Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4B611C96
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8p6Rd8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86300C433C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698914896;
	bh=/vU4eEtR8SUi8uWHzwTxbuB6eVxHN/DQ/EjThA8P2c4=;
	h=To:Subject:From:Date:From;
	b=M8p6Rd8ZTqk3LE07QSPi/tKRPkKJy4Egd2v1MWgyLin+Y2EZ2u0rF0/MCjczM4bGO
	 EhvjbhCF880L1xf8XtK/w6Q4sZJ0hvK7dX0RowDFu6TK+Jmez+QdyZEosdTMzMq1jL
	 B/f4f5fng0h+BSRIDltynl7vthNt/Iy/wS6bFVozAsKAizc25NpcPfkJ1VJKV0G4+M
	 5cbua1FShnLngrS82sGe+5tkcM53INA/U4xY8tn7oTgCNfzX53K0VN1SLp6bROTZPs
	 RMyCHqpRtzuThhWv+zvLnJ+GGUya2WSPmiuFyjUshi022BT0gNgAXOxHS30Q/R44ES
	 hFZViACEluCfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C472C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169891489643.28721.5591581754193231872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3503701a51f36c0247d05c9b96343ae47d96d51244b8d06c91cfce480dc81933
Date: Thu, 02 Nov 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698914896
