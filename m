Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554F1195
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 00:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE93C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 00:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691798588;
	bh=ZGlF+0G1R580QIUhVW4O45rsHo6MrQZx1VQ34oRkGBU=;
	h=To:Subject:From:Date:From;
	b=dpMeU27hTTv8+uMFo+eAvSq7HDIBMwMY+IjyVgwEzIl2zVg5aKL+Zm5sma2vg3/Oc
	 OAJcVMehD1+8JjUzH0+lFLznkKgOiUkISUNWIX0YGRTuo8F2zsh3vtztKZZWHo8GBI
	 uo98e6DH/bI6i54jLS1dPEzMYwSK6DMQMN7jepoxgMeOlWFaSVBoE/r3YQ3jL+I4e1
	 M2DZtSliKVgneRCEUak3ZgH4w3SDQmxkcobMpvSb81oaYkqe8M2rSAgLOCcnYd7yRP
	 /dmlL5XKkNp28LqMTrmrCTpd+HCv8wDiJlWCsd+zXoZPoM+ERBP5xJM89S1B6Vr4H2
	 P53qfW/1lJk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51E3C001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 00:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169179858867.7733.3250279945850274174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52761daa2940281d60b9c9a459d34519899d92224443d158e2c3bc3d2b8ab9a4
Date: Sat, 12 Aug 2023 00:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691798588
