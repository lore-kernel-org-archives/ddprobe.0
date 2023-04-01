Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8D117C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 03:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D614EC433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 03:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680319985;
	bh=h734s2YnEjR7bntQxAt6xah4D7seCjmpKSN7yBWoHIs=;
	h=To:Subject:From:Date:From;
	b=gqmI/C/IctiDWO0ra3rVAULyZAYsfeWGmaI3LNfCN1AwlwsBbYhsnf7T/u6vQXROv
	 z5xWnKJsAC0Fi+s23a141mAalwSav6SD31r8DgbP5TCmY3fgwJXZBC+KkZK+WfhxQQ
	 Xn13K64zpVDfC7+Fk+9DRZJxw4HItqr5TSM6vqnvWblvy4BWFJis7TyU4Zf4z6f29V
	 Kzey89H4xS9RP0zg1D3x5EwZ73b9AWESReavRP1fJO/viqhLc/qDShdsWXnDSECPOX
	 gwCh1tlXjpxABIXkbabN97jxaMmoS2nizx2y1cmHKZaOHtCZvBfd5/A2bMlrlmATh4
	 fAlAT+jd337nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCA8C76196
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 03:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168031998577.21856.18297289695044630788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbe477bd0cce32f514ea77d1950bd22eca6b710e96b662304f9293af26849f6
Date: Sat, 01 Apr 2023 03:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680319985
