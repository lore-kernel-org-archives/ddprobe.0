Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D741017C9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7909DC433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664072453;
	bh=la6zrsat4dV66zI5K98tSQTEyRXLMNOQuX3zuQgapF8=;
	h=To:Subject:From:Date:From;
	b=rl0fxmsvuPfvEvDpz/tHzsS/mKEb3JiZ7D4kyuVpXGW1DAWC7AVBi693G19bTc1rp
	 supvxCZPT83kbsA4ZNOIZmefMpYaqrHe56TuZZ5zZ9niXWaHLrihYxnNlTpUDiwOYW
	 s+hyP6zac0o1fbxREcu92WAdklLpyoBR86doHnifoHaKIFJZw4pOexa7vhkUVWxh0I
	 FffD1hzYsIwTTYIOes9nXUg7laDz07cwNCHoYRhMol/zHoxkiSmzUv8UuJkWqXiNhn
	 aDMFwzYZLeIao64UcA6IzxJgMtCOdeI1erWz/oujPT0SeE3GfewcX4h1HfbKl5Rh/4
	 j4C9qJftLqKXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B561C32771
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166407245334.8612.6404714991079074095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d276eb84b25127e58c37b865de8966315e5717b30165ceff0fa4e2a20b57f650
Date: Sun, 25 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664072453
