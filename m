Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585E8DDD7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 22:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8956C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 22:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693953848;
	bh=SuZ+S8FcNwJnmPkVMiWtL5cLLLW8NStN59LwCgN7zIY=;
	h=To:Subject:From:Date:From;
	b=ImXYMjwQ7AuGaUSwPyTnKHdUv4wfoneOe5CjslN27KMi3oKDAAvN88TynrKgUXKhX
	 a9yIFlpaUBiuQNgJUSIo8jjjLvCzjDAr9y0RUm8kJZJvihIX9RKCycGgFiwZkMyrvX
	 WHSkNaAAqP+zum8TVCdCPH73iQ4GnAmlZLFRa1Qwf7sMfkx1aWHwPMWwqIaK9KbJFW
	 CVGNlnjR/uYH0BbJl9V+i0HdORl+XRekkzs8rOz4ZNhcr5MsJqMU8qMSO0qRXLPL9k
	 Yow5IzvKvvA9p125qJ4ltjkN0w+HCpXAvLY/+t4MQLztptksPUEdQpLkw8YrldZ+QA
	 m/0SR64qGANCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D1DEE49AD
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 22:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169395384868.2902.1177580369221651021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50eaafbf326822809ff85e2f317f2ae03008dd04f14cb2d815adca933fad10ee
Date: Tue, 05 Sep 2023 22:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693953848
