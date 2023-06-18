Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4B4184C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 13:50:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2F6C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 13:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687096208;
	bh=TKoCJQhW/mLzYX/5QQCKZIY9G0uHhP9msLCaUcKBTVY=;
	h=To:Subject:From:Date:From;
	b=AnSDEs5g0qfYQmkFvIeR4nkwDB0w6fxgx+jBII+927Sc78tgNvHHPiY3zwZWtRp9M
	 g7T7gIy6n0t/F3dPWAihWEY59wJ09+gRY3xwlZ1nKgS2cXNQS2V0F1OIBGgJHEZVhp
	 +907qG/cJN7FHOmYYGFcIMBWwJdicytawLgoyGopvE07cMoiQrO3OLDnXXi1Qo0IxZ
	 7yR156Ssh05F5oGWcd8R8zVxWKrq3xO1hq9XRApwIio1JowCuXxdhxoiC7HAbhJI2t
	 pUenEjKcW6p59bA1gWgJhFzwUCvgW+JMYrNK2Tj1ww5dQuw5htn/4LBf6bjPp9WL9X
	 aaXcFT1KKjbzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9E9EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 13:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168709620869.3895.8837866907646281951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948fbeb83ae39935e9f1f618a8d202f51f822919d0c52fb372baf9bb4798be8f
Date: Sun, 18 Jun 2023 13:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687096208
