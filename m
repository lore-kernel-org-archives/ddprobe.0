Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4CD2F49
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 682F3C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667319054;
	bh=8In53nYkIsOHHRn3aDNQPLjiUUrpW4uiB8GhUldklwE=;
	h=To:Subject:From:Date:From;
	b=vAg1Ul4xxv8k6XfOaqPgCtTXZXrA2yHRePlRW3o/tye+VBNS843HcaHp3J36g+x7Q
	 8bcf0sQMmCLqxLvTUa5U0yh48cUWOgtZebjUQJMWi59GMLasDUiEBN0yNrUf1HaZHH
	 Ij86wszMnsaHf2WfQp6emwrsTQT1gOPhpL1lPUeyLxOq5IYkV3iTNJrhUdqzYjX9nt
	 aUH3g5e/P9/qUXf0dJ9Qb7L4lEiktm5kvYtk18fZGQN+qvzb6KU8TnruqkLH69BMlY
	 SUoyfSyIpTgIYxQNQlWmu/t+ZmjkB4isNgVtyKNY8r+lSNsOPEPpA2QJYRdIW3pyP+
	 YKMm5xN/HdzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5285EC4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166731905433.26708.1621885529495922290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb3d394fe549f0c50c44d7a25ba2801e7c21146ea98463b6e5cf4bc4f138399
Date: Tue, 01 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667319054
