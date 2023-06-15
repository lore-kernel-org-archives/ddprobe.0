Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F1D18F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 00:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8762C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686790028;
	bh=nphjsUJvbesMAV7M0d2wvXr3/iMijEh1cngGTiS/A9U=;
	h=To:Subject:From:Date:From;
	b=aKGhWnaifVB3jqZ23/Zb/sRWks66WmJGxWXIIsnWyaiJ4nEy3I7M9DX/7UjsQsJ6Y
	 /VRCKzfwYWIj4/OCLQy62DL3meD16Z3bVUNKqjaGGp6JNizxb3Iwd/X9knzxkL+Gl2
	 qXapPMG/qXYkHzQqi+S+G+FBLR0Ad/JmK4kN/wVe+OJwKyjWXtcZ9bFoEXK4O2aGjo
	 3sorRVWxGhECQDMJLRJa9Q5DSnZVRWPGTbdAtZxrXadt/v2z9CQRwmcZ1fP6xMeqov
	 o/om3PY4oocXdogYJNbouQOdbw0QTninocZSDmGhxY0R0JDbffdgk46aJZRlpUTrOe
	 fwjagSyyuZ+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B055AEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168679002871.4339.13576662532408035360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1792fc08e7b36ad966dfd34790ae3f85b4595b302c0df5569226ecf612bc6d42
Date: Thu, 15 Jun 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686790028
