Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DB34C89
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F2B8C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670001654;
	bh=AYdOf1VdzKUJh4Ay8dUAxWoybTCvb4G1t7NqfGMUSuA=;
	h=To:Subject:From:Date:From;
	b=K6qT0Sd1CFDkJLAGiwRR1EkN+p3+PCGmvAeqMl/ZLwjmzaat46KkF1wcSndAnvE7A
	 LQgD6I87TMpLhFfUyJE3IBcim+Nac1RxaSmEhfa5EYJoInkfMSW2bMfWx17IHTtPZ5
	 E2zc5VbxOk7uuuypo94FEuWeCoWoSJIYsPLa7iS3STPhVQubnn5H7pZLRg2ndHea8u
	 E5y8MdaIZvIOzSVnha2WEsQMZQDzka0CFn4Pg5Qr4u01ZDy9gFCqwxNu06LKZnizn2
	 SIbPHFNSJKhX9Ep9yWzCGpcwzWoJihjw+0czmdq+tWeqdOutEVGUFyWDH3DnhewsaC
	 eqBxgyp72hPbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FD4C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000165434.17018.11204036147745903774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4af6b377e694c9b774c9ebd722ad705d8aed8056880af03c070298abb87b33
Date: Fri, 02 Dec 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670001654
