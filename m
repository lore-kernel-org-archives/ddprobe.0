Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C053633F1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68776C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665090053;
	bh=JAYJtLkzmjx14FmVdcvHgxdXgY4+qe30hCnvLx2UHAQ=;
	h=To:Subject:From:Date:From;
	b=CjxmuNAK82j5xm4tER0vfr4YaMHBR/uyCF3YrIUMO8X6tQg/IIw4llfum5QTzJlEe
	 7Njp0qHUzGaK6B7ZpuJboDVzY/ZJ/V51KT2pRMU7ZYp3V50J1bPrcb1DXELnyfv6T7
	 /Fh+F5UdLVyHOi/ySwIl/O1QilhL14du+Dp2s4hw4Q7ipWssiWTX2OLsoPFFG0kliV
	 Ms7yfZW+jh0cxCzCNiLZPPsa0CG1QbGwAVXZk3Cwe8pzHZpEt25g5/WxtUthOJ7nv+
	 4fvo98ShzAwCUaTlK1EQz9NPmtknmHPY5dAt3KxTDpnG7T1jF7fLAY0K9wxmWGfV4e
	 GdPRXPYBvPOCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51431C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166509005332.29661.5114631309599896305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02866329a6f139acab8c0f0105a087b6c407126004ab3f0025b2528e6803df21
Date: Thu, 06 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665090053
