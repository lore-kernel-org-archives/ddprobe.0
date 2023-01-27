Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E86290D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA48C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674855185;
	bh=5w1jF5xLh4CZDtRWTWtIL4tLe66nVXAqY6nfzvfdt1A=;
	h=To:Subject:From:Date:From;
	b=JiigWSbZR2qH9f8LsIyulemuK90B8uvOMgODNCyrRNSSBl6Ba8Tef7eq/RJ03e5QT
	 qVZ65XekWMc5J1DpkIzFj0npMHnkr6MP374di80L3SuUQ3BeAx3aMbH/74076JEHHj
	 YFIUHOrNKQTdkWMqDkpFX2LCmQtCkNcrVXktRKS+omRgvVqtY+5v9UGroftE6f2G2C
	 zWBB7X9smgm9772i0OmFHizD9Ak1jEqgsh7oMjwCgm3zBmXru41Z2JEGvX/0APcV/5
	 ARO28V5JQNDnIS1q5eTpfAhiKB8/cgAn3H1U9KQRaYOZxKKNnCsbP8dG1t2lcNH2ZY
	 1YuiWJtkZmchA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C743DC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167485518580.19933.8684666078377649630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e64c4af74bd3c432cbd736c2a985c2dbdcf8ab266aa169b8a6c526f3c3cd21
Date: Fri, 27 Jan 2023 21:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674855185
