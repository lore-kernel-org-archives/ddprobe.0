Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C236E33CA
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81010C433F0
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671379887;
	bh=YesX6Re1Q/GUw91iW1KXn4mL1Y1hNduhA65+Qx7hH5Y=;
	h=To:Subject:From:Date:From;
	b=BQEX14r6qQaFilA675vMH5rjmXe4OGSSyNXVILo8JTt7SWO6fq32ofAnOxxwRRW5m
	 RQx5Hy2R8LnTkIdOxpKaf5A9V1LAuRykdd+45VvK0pCi0tWYf+NL1Zc057zkcbUnRp
	 zrurOOMkz1dUBpGvIiiEJJcod9QBfi9djsWFep3aWv23lGosCVD9mdtdY128CmIdT0
	 QA6QeBx4/9v2K9abbi6Fly2Q7kIbxzU1AVAO6+EqtwiiUSwfx8/jRTtuzybRBvyR4l
	 dv0C7b0uJGrwTJVB6Ce5+VGqwBrAPx3radYOjalekboL8JBFlk6JwnKkYI3ucRX8GG
	 +fsUoJyhlM/mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E62C10F1E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137988740.2884.15405388466494587479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e308b4e85da0a74d886d96701fc56d74f7f4cb98fef533d611c93f25643172
Date: Sun, 18 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671379887
