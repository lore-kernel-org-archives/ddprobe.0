Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2181FA0
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 18:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FD5C433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 18:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691258588;
	bh=V5Z3Sf2lwF+M9N+tFa/F51JU8J0YQ1CmEF2Jbu2wRuE=;
	h=To:Subject:From:Date:From;
	b=AbT0p3KHid75R82A1zZL4LtLp1EUSfSWyClyB9UEVgIUNKx/VLY/MEslrEiknrucf
	 dtYUv6x04xtcHKX34Ngh04tvYPKUu3ylj0o1135tbTmgzoGKiHO78Yhni/cGhJ5DQ6
	 zbdMrjE6AtVuuMISkRksTVIWt9lJMfUHuFrr1KCIs+8cs4Bg18YI0NrbvbnCgzkMr9
	 hdIEBGKNBEHwB3+oKyHjcJKz0vMsbymnVrPw3GqcSR9sQv+UfkHZnIwMm8fotYtGvq
	 Afv6JbqrVjP3ikVJcNbaaHz1CpsvibfbxpQL0G4GQjVKGtGCud9h9NNZJmC1jdfT+X
	 jkspczmgENqjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE12BC0015E
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 18:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169125858870.25408.8841457611634401441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef52aa140a378c81dbec47081469ebd0bb3cac59a44102b069892df049b9e14d
Date: Sat, 05 Aug 2023 18:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691258588
