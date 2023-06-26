Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6B9D505
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1E2C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687795388;
	bh=jv2JD9N4cSqDRZujA7Q1SkyKVuhrolrR6sl6GzJ5pGc=;
	h=To:Subject:From:Date:From;
	b=BLs094IcWZqhJWF69RsiM5cK6fZ2onwdDE8J95zkq63JfOpZyPcMykHuofYpFBMHR
	 yUt6LcisohnAJ5Q6/At0hmaPgPQ72dDObFbUI3Dc+ln5UEvX7J6+DRtVhUw72H+WG9
	 3FP7zlyYcYqjgwncRjO/FnX7KxXPP2YTTN5de/pSUCHtZREZMarKzcIZ4aNOw15F5c
	 6RPz846mt0X4d8+jAkEbJL8w24WHt+HT+oFWbrGLTk3SILeVld82S588+RaBRSfPJ4
	 jeDBqJOtSjK7aALz4/3WhHTldQmotldNCj6QLP2gcFvuj9qCdz3G4B8Jh1Wf4yQthV
	 rYnzxr4OEz8eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B710DEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779538874.9609.246485560554716731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3990f199092c375d42808bd346951c5066edbce6db553503ced7328fbd0274
Date: Mon, 26 Jun 2023 16:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687795388
