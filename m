Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C591C2568
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A65C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670092854;
	bh=CBbdDwHzvpNT9dhvPV9pWmRia5N87gY5aFX/Ynu8I0s=;
	h=To:Subject:From:Date:From;
	b=vQB1a396jQAKYEV9D6Lb3fOMBtla/x/rLU9jscxRmzGkZv85mOS/tAdOkB8jebqo1
	 Pr6XvC59RHiqAKYdxkbLdd2Y6T7dEM7Yv1UQ6X+WhXiYZgbvGHuX3v3fv66nTlpl8Y
	 RGzyF1/meVlb4zCFlA78zEjCN9M1tmg1VkO3zYV9IueCK0WAfnFbrdWBmSOzyFfudW
	 NxQx4ogpeB8q16UwR1S1RQjk0q9417yW0yOl1KFPvhOdoBqcsMjcXHXu2M6MrD9vFT
	 C+HK7THBW062EiSeNT+iV4obX6GJUJDSBEFKseX5WleV5NXOTNSWbDLdVOegtv5n0d
	 gCZba4HHZ0d2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513F9C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167009285431.20102.8298207100817716053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47885486c511c69ff345905a113ce44b3f3ccfdbb4b617a8c8d1a316b0e6d61d
Date: Sat, 03 Dec 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670092854
