Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574854C8C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08696C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683272226;
	bh=BzkyLi8ftzu+fpgYggXxNmuMB6iBDRLq6pNDG9gFEqA=;
	h=To:Subject:From:Date:From;
	b=ihbDjCF4pHZpIS73IkSAeQYaL5YpKlxAO6eMCMIyBpkoqx7Y5azpKKoVDo9+gILut
	 K5lXEX1Sx2q1UE/uszOpFbCiQ9VgJfU2Ii3CQ0uWHnwy66PZgNg/FqeIIgNxTPVyQm
	 0p9tY8APEHCqy3D5DAeCJv1hNEIR6/cCEU1jQAghdV+zLAgocdXK3ET7YC/xJDG/qL
	 7riEfgbx15yZEJxwJ+gBLnVp399DfeNw6DXIcqTlv+3abqxDUyoRfdsb1i1qZ6y1eM
	 lr7LAuYIgJSxnG8y5CfWH3tR07VuBuKSFnYi7PDEE0v6BQp1mhOUwug/zvcXfQK45d
	 BK/XNh6Z086dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9689C77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168327222587.27269.8751322089285409074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192858cfacc1b332689366a0b2f2240bbca45284098ab52b30c4f39497573385
Date: Fri, 05 May 2023 07:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683272225
