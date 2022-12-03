Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECC723B9
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4F3C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670062854;
	bh=QvvfCV1CKGwd2AxHogklivWOrHUlk65fs0jFCZ1qYmI=;
	h=To:Subject:From:Date:From;
	b=pPwvsUZ8xclcyWT787xj2ToH6S4PQU1b1cHEsXfY+e83GH/p15DCHWfAZ1VNmxnjn
	 LhfUmv9tkjPTtpZOmVjcFN0BKJ81KCqsaX6X0uosgQ4k6bNhQQZOhEF6uYQwUUtebw
	 qAMEGLXZLSKyoLDDg7rOld4SV+1yK689TMaPihmmMhWWuhtWbfP6+5TEkKgcEW1FJ+
	 tAyz9KEOt+SF8DYZDPl3yUFZCMhnPfME9Tep9dXZ6KlirBSovjdFZCJeVRs8yqrX6s
	 8Ux67aDZFJWwqrlfV/Nx2O3DIKRAn/MVUHqizC5is+d4LmQXdDm+AnbXojdzUpytA+
	 i4j1q+iV2Y9oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5122BC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167006285432.4391.14940138407826357203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a23abbe189c7d29a1f9c0c839fbe95854055c329886f83e8d0c8c91729aa62
Date: Sat, 03 Dec 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670062854
