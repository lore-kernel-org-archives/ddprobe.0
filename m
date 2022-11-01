Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4829366
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 821BAC433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667275254;
	bh=1SdIJ90uAkkgP0hvUZ/IbnxpGUUnyPWLG3lF2QoDO14=;
	h=To:Subject:From:Date:From;
	b=N/HD0LhUh4vriig7GnB4bj6Ntn8mrC2wajrwIQB6+Ml+w0Vb3bIBl88nzscRQqpMw
	 A8YvJoug4ZE8kx8/zI2eCwCAGIVWu5YiqWM/gtg2ezsIgDILX0Wuijd5LNlWep1gC3
	 IK0UHkbrrpb6iHktjL/tS+qWjFzOSxngpFyAi+K8UuIl360hAfAIjJYY2XNjQgy0RC
	 tRGt+Yjxx66p8HFvrVF7SUc73HKdlRHRx/wZjKvCTdUifAKVGXBg3MRbs0048l6xV2
	 8C8nhy7nfP+vg58gsxiZ+1fnH6umz2ApgF+MMBlhIYoAl+jjtYcPVZS1G8xAKCy/iC
	 rwhwKTN3E6Bpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DE7C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166727525441.2106.3018151413295797411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b389eb0e5abe9cd27f4c159cb9f24257f699ceeda31b59017a9b35123f423f9c
Date: Tue, 01 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667275254
