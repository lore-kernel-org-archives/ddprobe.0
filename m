Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E8F8829
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 23:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB4CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 23:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674515586;
	bh=WLC3K3FWWP+Ze2m0Qd1AmFpnmzcVNbzq+zuKltLfmgI=;
	h=To:Subject:From:Date:From;
	b=J4cDNdHtwWQmGR0v0OVmRaSweZhjrpa1ZvM8aPnhCxMLASQ7OXHTfbRsLreRi1nMQ
	 aywjLqbrqlnJmeDPspzodtjt25ckICsQwlc3grfGCaBSGUbzXf3i7RlBlXXvmod6U1
	 /NPC07qBpwKJEkTLm+4rI02OP04xgpg2hbLl3kfiFaadOYGPo1YkNywoYTpze5WAoz
	 lGpZnY/Jwpq/0FFKFOcFvosBnP0taLeEfHA+XOjkWsp1NvcdmzRpt9QZH8y6j0A6lR
	 Txc6lml1zW6gs+Z/FWBXjC98GYOJPyNZUYxKHKAwGwb2D0du2kLykZgGnvhW4+aJXt
	 5bXMATlFfssWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DA5C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 23:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167451558580.18262.18010837519950015925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0d5ddb9725ab420c33cf14bb903065a51d43e300ef633f2c17ed06a8e4b958
Date: Mon, 23 Jan 2023 23:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674515585
