Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A6B20EB
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F49EC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662577253;
	bh=X+k1E2a04qnF5RMRk2dxUUIIw1P2dfeAaQlDHKzNWKc=;
	h=To:Subject:From:Date:From;
	b=cbLAHsIDag/MHNU/VSkRs7wH23TpQlEIgCo1Lf6A8CGS3xWrld8L2Go6QbgFKKoSt
	 c/6F92IDasNu6810d2nRNoehZ45fXkFWT6Ow/1+TP7Mxv5QwnAYp/IetS6v9GnDQHp
	 EldyCU/lnO9DmxF0EI+ZIJ3Du02q77lClFdoMbhLAUuM6N7H+46ZJbUVKt0ImBUtDg
	 /7qr+8G34yL0ccDRHT8yRbyQqHeN6BN0ZxwYkoFk3/euZwuNAvNxvCm+ehB3Cmosik
	 oFjXnhJpS7HBFLNMTyzGXxovs/+oLB1/BO1GbbnbtYIvylEulhTMgItYhuF8x0lV9Y
	 FouE3n0/0qp4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6148FC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166257725338.28665.4973186860929243932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40faf64280de1647301d206527ceccc5b8c77564c62720a6e512b01f511c9910
Date: Wed, 07 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662577253
