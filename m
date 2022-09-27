Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5464C86
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A62CC433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664315453;
	bh=jXms6M4kYExmLw7Tkwb4SbpZeYKZoSDHx4tPGcPh8SA=;
	h=To:Subject:From:Date:From;
	b=qdbGcskoKzyL8hmcf8vVuHX9ki455caEXA1guUKCT/FdpptD7dbL8RHHieYsGvj2y
	 pjIgdKC75XqncK/aAcbH/FYK5biFVm725CZt38S8uEY+eK8R1nPRs9eAmdrOjjCTPe
	 tLNAWYMtxnjdjZfsmW+xHv8YsWUXpUKhlzwdk25WBgVkE1R7mDoq1QzGKmr1PrdXJ4
	 JXDg3Qj3OaG0jusYqBHlzgZzrF6C+YiiAGGSFwkB4WcwEn20tX7l10ZH0U/zYIixcF
	 tJsh6AhA9IOSK6vHN2O9lVyhzjqSU5EDTLfA8NdFmPqnzp3R+/1YIvarnkpUsnQBFP
	 GclDFlUlV3icQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AA6C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166431545333.6118.6054529508698736032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffdab600750b64fdb6058c81ab9bca055879ba2937a42df4911765a43437ce16
Date: Tue, 27 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664315453
