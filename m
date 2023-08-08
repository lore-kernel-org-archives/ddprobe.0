Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E35801
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 03:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE65C433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 03:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691465588;
	bh=nxt6sQNUvm38hoQApVvrDn+2yxrt3CMS449ttF8YqIg=;
	h=To:Subject:From:Date:From;
	b=EgWc1x02iJ0v9/4bbl1yO2+hvX/U84WBPr1/BrFnCgRU9kmQ7uvzEBLha8YVuxFlE
	 wS6b128RAyWtASyF0r4GTsGg4uS1ZsTpOz85WrUCsOZQAX8Cm6pPLIYr5Fu3bTaAof
	 VWW3sD1ezEAhFCA3/4AFzXPxd5xip5iE6I+Uz5cru2luMVnVi63TypbOUs2IYODmmY
	 dz2ekUxGLJxa8/vKgnk5NMiENApT3rJLnjASgEs7WUACQkgWJTLtiHVA+Nd3iwbiS+
	 gbrT2P7LdENfLaYCDB5UIhb1GUtUai9hnapLHAHC5o5C1zdl6cRLscA4+U1Y8TUF9Y
	 tQLNo1ig3rl5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B41EB64DD
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 03:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169146558867.24081.17900206444286450646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bcf4f4b08db7d56222e59f18fbf2a1363e3bd3861e43fcb7c17ebb69f0f12ae
Date: Tue, 08 Aug 2023 03:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691465588
