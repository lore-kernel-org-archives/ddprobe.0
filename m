Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4CD6FC3
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7178CC433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667479254;
	bh=ksShkUQe6ttEhgEF3yYdupcj08INQlcKF25jOrIFuTo=;
	h=To:Subject:From:Date:From;
	b=tHy6jX5+OC4qjX8CEbj63s9MLq0s5bPJnAiIj/dVgvKrMNEn/tFGS8LE1+E66Bwlc
	 hv0OpJXSGghbHeKVtXQwiV/ZrKvVIyCgDGhqWbbcZ/le9pai51h4Vk1txV0CO/J8g5
	 LS4mL5FyQhCKwGnbrn093Pcsq3PCKFi3uzNt/PjWsMA6OdCOOlxf0e73EECMf5P/nS
	 p51D9U0W/NffV1XOSsFvRO1ijEkXEKLUSxwuDpe9OkB8U4sNDa8Wsl2tLn+d2rpZAJ
	 2YhWDYpXJftvObPOugFnxP6UzNqohLL5nt9GpLgtM/y6Gsbwzb4mFls8Yaa6ACP7pR
	 AWx7YjEcBiJoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57672C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166747925434.20190.12238167851286190174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa43b1c5208874fc4e1d5e174ad56002c9cd21af3fae076562a4923df0120c9
Date: Thu, 03 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667479254
