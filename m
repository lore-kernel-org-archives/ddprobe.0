Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32107E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69854C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665237653;
	bh=655pT8QtVJGz+KUarHpi+AfSZ0LSgJKdI5v9R0+lvsI=;
	h=To:Subject:From:Date:From;
	b=XUyoqqVjwjBdij8XsOQskQFmHN6t26BAYZynd2drBjb84oInLDy1VxA2kYviN9hAt
	 NqXiL9F6Lf/jJ1pvFkSTXd+EpslDrvjaQy00BKvmOKt8RmrbjHQhjsrA5+xkIlHvq1
	 lHMx3NKc2B+VrHhSzHHXHPm2LqQSoCpnQoJwL3ZEOsB2z8nhmRF8iEpjIAUcemlLl+
	 ZcaXC5qsQHmyqlyL+VFNRepmCqS1oxdxM6sDvkyHm+SbAuIn0nh/f11cMHwBx7f/p5
	 QdRaNs9zbNp82ptadJ6eoJ5q+JajJwdiOSpXQNRm3NbhMVNbQERmUH601u+IM+hrun
	 METdDJnrCzd8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E73C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166523765332.13570.357769006577665953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e2519dc8263d8ed26932ff44ce7c1a3feeea45785360de659be674486fcd11
Date: Sat, 08 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665237653
