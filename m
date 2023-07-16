Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4494FEA1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 09:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD04C433C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 09:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689498068;
	bh=CYgU/aQasvPQ7zPTXM/fjm4J8g4YE8FmPtzyBOT1PII=;
	h=To:Subject:From:Date:From;
	b=C0gSCcFsuw2476ec98Djnpo/06cZlm7Txh22C3DnjPQhEzJsmP/PpTh1M94F05cUI
	 AnOuJwotk47u30I8T1pdLViv6oqYE7NnxLQiHZHAAEqC1vi+mMKiHZ0Hn8kH9eGAqI
	 /myxloFIaz5ao2lFaFSLKZlvMHCdHUFeQd1IBcvj1y2uxHA4/X4bo2LzRlyuY4rHMy
	 YH6gp82+j5a9zELZ1e7VquGrBt+EOg+a+oQmnC2FUkO3xgyWJEPuX/49KloGVXusp6
	 ubDyRCMJXiwWJNoK5i6XtvRz3iYLrnP9AuE+YFi6QWRzVzQMg7AKE6areNSefAnCmt
	 OQajNhXvV/lGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B3CEB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 09:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168949806870.28130.16122113956461435642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546dc81d172373468c3ab5edbf0e3095677a33c7df6240ac32d49401aef96673
Date: Sun, 16 Jul 2023 09:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689498068
