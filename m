Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BC58C03
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 22:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF48C433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 22:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692658448;
	bh=ikSWk/D9G7mUlPvYjcjYgc76ADWQIZMmiC9wfGXCzs4=;
	h=To:Subject:From:Date:From;
	b=liVMToiAVs9ZkYf6AcxZcLLY1qgQzQ+ojts4qCrwdDy5IE37jS97WsqNPn65r1Yx+
	 YDbwMqptfbopyyUK3XnPmci40qQ40Ihsm8riLAYdxIR6v4iX+6hKrbkZ+Ppg9ItROw
	 mdjEQhNj9gYuBW8cbl6/m5dKDczXDAJpnW4Q3iv8xQpZBIPEPaUwKcH7EuYampGe5g
	 rdXst0Bhg1J7yIP3QfQaQX4iey+n7jPIY0JIbE0RhfOs6FNzAsXCEYSE3oo3fp3+Uk
	 w2TDcgdg6f9naqLGD+ynW/LvaJlxSwlfAtgYzIKcwGH1GspjiJT9fdeSL/xF5IogIJ
	 bqkvouGmmlQEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7090EE49A5
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 22:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169265844867.5125.13763125004218813233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab3077dd7f428af85609271b1d70ad205628d6af52610721d6e47728334c457
Date: Mon, 21 Aug 2023 22:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692658448
