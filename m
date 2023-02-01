Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459647E
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 01:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F65C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 01:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675215245;
	bh=vQYQK+gkZHgISs+6KL8wvCXzcOv3vYPaBElS7WzPW+Q=;
	h=To:Subject:From:Date:From;
	b=VxIkV8JJ2wAWPNnlka4kCsikbgoz0Nwi0uubq95HwWd2UJ1s9/B/YVkHa3MwLUPaQ
	 tUEWFLB6NuMboww9jDX8gJ6Iah2/SsBPIiVhyoFnZHQXmZ0WCgji3pO811S/H8bsgh
	 xMTL/F3BvdXl+lq2F4A/fehOcl3rWMeaBCewVUMtgrLCcr/Bf+zuTW85U8PfMgqPT5
	 hX4nhVVbnXDuhKYGm081CC6zZoEN8VtpBVu3TL3yBM66ka7wZpk8LtGhHOIJXfn+6+
	 WScg7Mf8GxQQ463E0l15kf0TbjNSYIVq3JTlqD101gBw2iLQotEA75sKp39vfQCvkB
	 QsDpHs74LphwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5195C636CC
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 01:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167521524579.10261.14287934863056630820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87bc8628a6803dcfc91bc46d211bbf7f49189d0e2373a297ce172188b1af6b24
Date: Wed, 01 Feb 2023 01:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675215245
