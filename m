Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFFF5C91
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F93CC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662559253;
	bh=aimhyLWf6EwGmDipo0uvxs0ZHbaqLhhHBOvdJ3nRohQ=;
	h=To:Subject:From:Date:From;
	b=XFuKHdJwTJ/CZYHzbxP1z7YWPloCwtmg6d0nV9VRptywBVsMDHb5kpApdn/sbSiR7
	 Mphf6bEjaBHnL9p8NDXTVTgvScDckecLvd2X1DZHVG6VB5YtWobVmkA06FhbgcoS2D
	 RgavF1mXU34qFnmUXnCkMBPPjy0jWbbOJ+e1IpltENqiXjchAllk+8+18MJtK4L2kZ
	 0OwXpci7lL/KIvtcLr2zpAJxvCD+6t6xwUMXYvZLFUQEtrmgW1RXAhNrCZqC3uK/+J
	 tbWJC+5661VFQIaSV3DVIdnSqZ7s8dJHp8tP3Hi3llwwxAgmjk8ITj7yfBXEgqcE07
	 96+nA4aPMQEwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53ECAC54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255925333.9065.10053913024723930122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906545ae0423f12880f911dfde9c10c166db52aa680d2235791ad42ca91c8ce6
Date: Wed, 07 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662559253
