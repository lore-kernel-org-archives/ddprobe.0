Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C03020F0
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 07:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFDAC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 07:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678087025;
	bh=M9XagMTYLorAHKr3DrqRthwkfbMfVZtN237lXOI2N9U=;
	h=To:Subject:From:Date:From;
	b=bDdH7j3e6W+t0TCuVbokd+gttlMoM0RBj0V4XGoOp1Rat94uTUWBUhWqaA8BTQXZC
	 H3iAnVPi6AAerP5JLu0dhY1lpBGy3HWuwMlZCCBCXMD6q7AFXPG6Z7XlBTkAaL9zey
	 JHg+S4JKHIan2m6gNzGodZqgA+1nQ8hjC2n3zJ60fguAYNC8y4EIYFOe8/ihNbWq9C
	 cLvm8ExX3Iqt0I7DWHCpUtjkzhmcZ4zx3KRL0vdVGE+SLfJzf800STEAcD8Yvir4ZI
	 wdc77G5t/DJnvbIf5Wt3lKJPHcoXiRrBBZ6bQxGBa3SBFs6u6abGOZD08rzOorzoC+
	 7LeBJULic/yAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAC6C678D4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 07:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167808702576.1202.9434001364489446859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e000aa5b700a823c85e9467a1d7a2c420035c5e3d41cb06283b3d65e439b3584
Date: Mon, 06 Mar 2023 07:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678087025
