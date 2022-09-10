Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A93A40
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7263AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662789653;
	bh=RSUovuKe9fiHZxDYsxn7exI4eFWtRehajmoGZBQjD04=;
	h=To:Subject:From:Date:From;
	b=leWv/M+ZEppIdj4pIxUQPN1Qq/fUIwXmkQsGjLWXM0VbUcWDhrKVJ2Xn1VB+6QXOJ
	 9bDId5SLf1V2Igi5lSUghTQ8fQmMXp3wYcmXwMS5fEladeYWCWskDZoT9FD9x8WhwU
	 rWXNB8feyJjvt4y8qcZ4WVckT2TG6mMkaHgAT/X4a0mbjWDyRqnvo9PA1R92AZUlHX
	 tQHkfdglhTRFGfV8zCEYn852gqV9H/X+r8LPLk/8g7jTTamBfnLHFEanYdi6DplzrR
	 xsfvPhK9BqOiH0IYMzi3vm9sOQllJP8o85GNrwRjea9JzjtI9zK+nvD6neg1VhN7cc
	 9QTi30DJeikiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5337DECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166278965333.6454.3262284113347994631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881dc88f9f7f8342e94f3187398a9b3dd8f0595012ab5675caf2f9cfb3a61d5c
Date: Sat, 10 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662789653
