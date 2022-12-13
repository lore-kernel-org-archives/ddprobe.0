Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E845A748C
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E0A4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670950887;
	bh=hpqRDhpTa0ddkhss5vMzAbf3xezxE0oSO1g0+36p0JI=;
	h=To:Subject:From:Date:From;
	b=kW+gLvOx5EX+3iPWO+ay/6WX+6WtsfTFjHqgmU0hlEe4eEEkHWwcQ3K6W3XYVAYGH
	 Gra1x4fMFqC+ormDtvrkBFgOmVrlLmxkS+/iFl/PPwzBqm0rjbMScXNgvDoZVSdo1a
	 +6iEe5SbQs4bX9icnHEZODOGTiYsBgK8j86vfllUcNn9jjfaV1MjE72qNNl/rpgi38
	 lX1wQuB4yskFknLNcH6aYMAz1Of/b7h/3ob5CCxfkJV4+PJWjS/O75tP1T3h6CiGHk
	 PLyvSDLTmQjn9amGxmTpk+hLY4ysqm2pPKTzsg48mAvdc01siADNhjUvRoInmeWDLz
	 /K/RKja8tt3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA9AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095088742.5856.10101361509688424395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd06c1285fef45cbf6236e17f1aca77bf1a650582079fe34162284bebb0c801
Date: Tue, 13 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670950887
