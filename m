Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35976322A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0666C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674602585;
	bh=TOvEpGlImhXGqN4LK4FsZ3YrCvySw/OGigFOv7duWKA=;
	h=To:Subject:From:Date:From;
	b=rlnDlmXlGracmAYEva1od//2YSrHnShI9DtJ53QfBKiajCNw1XKn+fXFLO2XI4eOV
	 gF9UYi4JZCO6QZtvCEX7EcG9/i1XijEDnn94PJFyVNhTjgfvPsiDlo4WV3a8F7BrYR
	 oLetkAihQG15tXr0UT771ob30mo/sBzPMyLwvmB27L75+V9HRH/nQuewinLJ4oQ/rT
	 3IXptg0XCzOK/BS/NjM2OitPXEIudFSENVbP7lLJFEHwGDqwQZGMHmCid3uleFEZtB
	 xm7WeT8puzF5bbmPyJ6k4gkE9XC0TALE/Bgyaqi0VEkoBZPd+u7uproXmjNXLnvpD2
	 uF7zO7IalTeeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69D3C54EED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460258574.2812.8205345455651926639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa8505d533503623454d27e73c6aa177146f62c476021d064d7bceb84bcbcce
Date: Tue, 24 Jan 2023 23:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674602585
