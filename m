Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40407C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF75C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662634853;
	bh=zvFB+KsCnUK3aom+YPygVhga8dYUVFW7OA9ChJCMv5I=;
	h=To:Subject:From:Date:From;
	b=EUrnjuSlPyXkCwFzaPq9tGKIjVS5q/uFKZcay12q8TcIpLsnSJLlbUvx/VkAf3n76
	 A54AD1ffycjNfwxvyNBTNjvgJkfouqcJSw9hMdm3zkaBVrMEEmIwdlJFoOLw7+HKth
	 K8XKvgR03e+61fhZVV4wtqsSUeH5bb44ePeXomCVO5S1WDqpqDcw07CiPNBEwLV5bx
	 2jP1c6/23NEpOND8uX6bcjJNELSuRJSHSWBhKH2UXv/X6MhP7WgjKM1NRpPbDyD59v
	 yWQ092aY8e9VwMhID4OBYyeRtrf5YdDoUfeMYAEQ9QTw8kUCxSqlfK6yzzF7h+iX3O
	 kYNTrqEVRif9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FB4C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166263485333.10655.16689707821722281051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb9982633a26e2434296bc0c04b10c8c2611d884a29772b9884bcb2d9298310
Date: Thu, 08 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662634853
