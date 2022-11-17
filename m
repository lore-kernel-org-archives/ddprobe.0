Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8720291F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66E88C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668690654;
	bh=ZnN2pY1oygHrOY/e23NR8fuumZJj5m3555Jr1FzZaGI=;
	h=To:Subject:From:Date:From;
	b=GjzSBp/oLn0mwSwpNYg6HN4l9xu96ScpMfueX0bXtV/KGnUd2tZa+wc1Jg+WVqL/5
	 IT3L5KQCGCnIZQxHBEUF1IOcKt8XjxUCduisw8wYcPwTEYxwmzPfbj5ef8aVq7yDF+
	 4ozkleHojJ2AQEAmpwV4VJ53LkTyH/4OaaGwt7alapLSizyaTlm2RL2JDJBEwQWEiP
	 2qyacuyQFLAmuDdpHSN+7N80M9MZ05S5NAXKnrNltQR0c9QMl1AScDDon/7ODjygMQ
	 QqnfFjxXEKodrC4+g51U4rrxLpiyDtKJ+ZrCCg/qaMDU5S78K9ZuEKYAB7bBuWApgO
	 l365TYe9e0Bdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50883C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166869065432.25746.18012333454960179351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1c6dc8bf2e179bc08b426b8a6c6d6abf5d01506cf5a7c4e8a9efad740fb180
Date: Thu, 17 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668690654
