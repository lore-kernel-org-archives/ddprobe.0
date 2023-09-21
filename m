Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505059CA5A
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 23:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C991CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 23:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695338108;
	bh=Y5kiBdVBwVzOqJIlUzZ1l/voqLoOR1jtwzBgRqHZTdI=;
	h=To:Subject:From:Date:From;
	b=DP0Wg3z56QPjSFkc1DqEsZtPgNkMmr7KvWZHj7Ox6IbIpLFAxEuBXwfmORKdUIgyA
	 zdbaT6C6YhbqMRGOY68CHVRSUGdTgyZWeYy3hGFVJFbfZx3gfRuG0PefJCmRwr1ccc
	 rDFU5KYvvVwh1cq88lT+tioGWqRR84RR1WHHZ530wq/7ho5Dp/E/esqU+WQGenp7zM
	 0mcld8+/vlNzNblTPj7D/oPBapUqu0k0JEt21O5FvUkCLKOkV1wwtYOKBM7RXLmWw4
	 TDMyWwkcXwMy+inpyiylqzgYHpA17pUNuuCrqpwG6a/a0rZwVtzH890NJKf4kz7xGD
	 XlsLfpw0A83CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5DCE7D0B4
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 23:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169533810867.30386.3979001964318287577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d5bcbd3fda0c9afd8eba17e8e8553527fe3818f4cc034826db266447f694dd
Date: Thu, 21 Sep 2023 23:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695338108
