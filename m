Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE85A473
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B17AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668802254;
	bh=SBDdML7mZkHK6nal3WHjjAcvphEprv8Yn+RDAUq/11w=;
	h=To:Subject:From:Date:From;
	b=f7mZLQCMc/atVRtzLtbrs2ljzxYT/WZe89MlgXFzHiCTMHvslawynncjlXGgQ7P9l
	 krfJ00D3AVerUJnsr2qIeQsX0s/Sy0obNa/MQFPxWlSmKKxcL2M68DmzWqmtDI7cQu
	 +ycKO2XuXFPn+YlJ/27EQL3wuAiriyBW/7mhNpqcMedPvZM9Pj3JUpCrywVXESi7qF
	 43KvZK6w2ThUJA9bR0/O7JQyJAHjUD2QbEl6DGfN1GQLD0FJgy03q90nDoNYkzt+dN
	 iasuvzTSxXTPbSkwDT/dUzXtNBfcK1BVxbIqpi7rDrLcWVqj58u11VT/hcb5DyE1oM
	 xPMwdkgzvYlTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525DDC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880225433.23654.683181387890472923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d652e9d4dd9db68c073acc8f88eb8089971f47d07dbd15acb595dc0acc79cc77
Date: Fri, 18 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668802254
