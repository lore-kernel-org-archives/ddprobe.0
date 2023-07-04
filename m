Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3486128
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 19:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5036C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 19:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688500568;
	bh=XQsw6Gt4jxvSq30UiZA1NnmQU4LoIbtvDg47mKVE40M=;
	h=To:Subject:From:Date:From;
	b=dT46qFPHjBbnFmLXuiGEyyGu94fEZ71jo6v+MMIUSLFMdZ8ua0HvFZTLzIEfBxFC5
	 04M/IPfJfu/N95a4jEpFK9iobJgi9TFF3AyH8CI68c7/wMj2QKcb6dWqGEeAiVy8JZ
	 GQSm2O+uSz4U20LMrVz2/pnHhYGv0Rz+Q31nfCh/CGknfobvFaSoQAmXFGCmRBhEwJ
	 ll8xYKYzvbG7uCv9DLqThdwihHxYmGudGrvbF5Hq9kA1OhRJ2scoMX5JHZ3YzADjXe
	 M9Stv5vVR6m8eimgG9bVVfIWZKzBkJElhYMyAgoVwHr1nzKkgzuCW6ebfkp0hSNdsU
	 8OHvklek9lXHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A89EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 19:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168850056880.7325.17737249005965569725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883f2e5d3e4289f818494082e397113f6dac022d94297aed3d34ef25d1e52171
Date: Tue, 04 Jul 2023 19:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688500568
