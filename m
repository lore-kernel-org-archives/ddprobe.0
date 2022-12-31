Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FC92903
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CCFEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672499487;
	bh=MqkziIlf7Y+4N55ogVKxmYfUBoEFz+lJtXOE30UogCg=;
	h=To:Subject:From:Date:From;
	b=ieYnD26Xol33WGMKfGimBWHClJ4wYPq779oobXE2YsH99ZwOh9Z4Cl5qjdhE9Ch75
	 KDiIk0rYRyMcgFC0Q9A3aMKq1fQMtX26tedksc7KJapLahm++T9LkpCVHpB/fyTO1k
	 +uEpFyU4/8peL3LuNqI0tRiX//eSMU7H323rcfzOt4cqoX6ZAZsz/xoqrp6C4q+yrk
	 NBSkeBfLdZcalqErpRTLYyW+YEMEpQV/uB2/ZTkxSWmiYSvPIRZTfka6pn7XaauLSI
	 g5Tl9hSam2QyI69BGCK139tkQUn2gVJhRCAIeQXc17V6U19jgrWEiTmW9U0uygX4wt
	 z3nrZZK5rBfQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF24C3DA7A
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167249948744.16822.3885784616324436966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcef74bc6f3aeb1042032ce90a6773aea27885bd6c1e36a482a96469169ec222
Date: Sat, 31 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672499487
