Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB2CC2EB
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 11:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5710C433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 11:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692962048;
	bh=42zcal0TQgXE9uWmN02ia7XJroYrC9QcZgayghqXwzk=;
	h=To:Subject:From:Date:From;
	b=OwvPiiByQKdCmWHNZeEPZ7bD4MXe8i60SpASCDDjU5skzPt9XanLgNRSXj4NpfHhJ
	 dGT9YB4QYQRlY5EBSyZfBozlck8U3lQaJeEJbttZLUV8HpbGtoDHVvjFeeod2n/hk3
	 8HBFjKQm3wE5T0u5eBpXTgh52d/YMxWbuybpCel36UrpdPOYbaEvu5sPsBJzxKvWvP
	 pudusjh8vey+HsjTHCDvgOvggsgOCH4x6OCrihO9ABYngjf4vh6KP+fyUxTc5T3tom
	 VkLQAAIKKpFjFl13Kqdk9TS63PBdxp5VLgB8HbRRdV8G/aeTO1B+ecDmTMUVRIBLPV
	 aX79BAv3zR3HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0FBC71133
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 11:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169296204870.20154.3048810332795151614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74eaa36dec58b0855f55a7c9b0720525fa46b0b3730cb2a1e87ae00996f9ea9
Date: Fri, 25 Aug 2023 11:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692962048
