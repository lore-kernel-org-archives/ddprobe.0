Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DA73C17
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7305AC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662324653;
	bh=sSKWtCFSqX4KNofg3xsce8qAInOO4fKURZF06bJ+jcg=;
	h=To:Subject:From:Date:From;
	b=GY6iS7Qhzdov/9jyqGcGpdT9RnW2PCpPzU7KV2c9TPR8TZb/kbaWY/CKlC+n6SkIi
	 FQ+yi5IVYVV8greki3SRUU7buMhtCHlYFKktN7a5mc4fyf0h4gNPiozd9eOvpNQz3J
	 ndYzLUCrc+irPG+xfGPnpSG06Of46f2cjxaEztWby+yN5Y2a8XrX8RwdsAceVLS8Yp
	 bOCMfD+kBG4FZ0lGBSGxtW3qKZ5gq8qfTmTIFy76MGK1UOrNiimdkxfyapq2MM4frE
	 1E+xfM1B3GlHKY2GpeIRWPsZ4BttT7kfZZFb6KqSoAFYN1nGeNH6AtBoxSydeFoDIy
	 4mnDPl+BEv1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50415C54EE9
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166232465332.14099.8752720521634720092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6154f2ccbfb17e0c7f507bedcf26ccf43734303d7c562ac5ee2f8720f1f62d0
Date: Sun, 04 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662324653
