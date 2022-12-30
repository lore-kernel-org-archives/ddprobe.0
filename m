Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCED11C28
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8507EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672413087;
	bh=0KBRs8mr8fW7yBXIhnCvVo+kL4cEy9VdEPLD/kqnKz4=;
	h=To:Subject:From:Date:From;
	b=PBG3AVKSKDm57I4eqfPa4qs1RjKAjWvcn8yqNMaSSqOEV5bSXz7E6dm+cv533Qkyz
	 c3z0QIIj1gE2sm2FGUVFATNM/bU5ljylY5bktmBUjHyL4TxwFwzCN/1hnmq4NRxe7E
	 O3bmADzNC2VW7CI9CCmaTG8HLXP5Mr19HCxqXDuVvexA1NYEvJFnA0KrwA5opanRXP
	 EagZ+BJvMUXP3BrMYPdijzxKRpa1GMGEIjoLsvmNoKJfOill0UecIcuFAzVPsS9fvi
	 lqNMutlA8u9XO9lBqdIOMi5Nl+yuE4o1PY18DoBKc35tmwBHOc3BND+UNgNCJimD0y
	 IfZ4CxF3WvyAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C014C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167241308743.22907.14987523372181196811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239f3327e1d702d1293a393abccc8e15a194054710b176d7f911819587bfff92
Date: Fri, 30 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672413087
