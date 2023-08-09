Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50257654
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 08:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB912C433CC
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 08:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691569388;
	bh=ZiEaNSuNkytHFmp07zZxhQgXB6hHytjQs7cohm5cxOQ=;
	h=To:Subject:From:Date:From;
	b=C14voNWbVgJ81+ILTslV1swP0EoM76mosbXyoKresLUEOpTjhvIga3LVq4z6MEINi
	 +RgozZ6n7pqF8PJ5kHdrRvWmOOzc3ZHY4Wu2HhtH1ij2fulm9g7qDS84SEzvxnu8EV
	 8AapYKigupeHMh3UeZ5jCj7JMmBYXD+90G+Xzy17U8f0NntiB4V3Z2mEGEPk6RkSgJ
	 sS99r/GhKUtVVEIToSNEdz8Lngk8PS1+X7jU40wbom0ND4EpYPCG9fXND3yG25jdMi
	 gqp2U9NWGNjh9I5aBo8w8J4tP1S7dN9dw4BBiNaGuaaBiP+GanaAVnXJGqpcWdAA3P
	 +BYt+t1BYNSNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEA6C001E0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 08:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169156938870.11062.13167489340910105446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c566f178d71231eb987d73e8ddb1e04395490fb5cae8be42a879da961fd2f10a
Date: Wed, 09 Aug 2023 08:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691569388
