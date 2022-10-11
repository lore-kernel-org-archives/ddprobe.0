Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7A033DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70171C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665494453;
	bh=mt0vpfbtleNLAvU6slPCVU1EHyeL3gNQdAkyMxSBaK0=;
	h=To:Subject:From:Date:From;
	b=Tlmo8Rtv+KzeQCvInA9Xp0ZOCwaXEEoqn1xT8mJYTCQLt1eWojNRaTZ+W++tKxsV7
	 B4bHR3tMERkwkTOUAbboS/rT3SFZEgLUQgJAWQ3PXMbOpxZ/tkQl9oaojePz5fMEHP
	 xYDnlI+e6ifYuel9ulLVjX3MXCu1Ft5NNkVmtip4PF2A/DupXxq6iB5P1PIG4+r2J1
	 78oujIz39fyOHX0cjwcc3xH1vS/t4EtqIcjhq0pnEoQGspEorsKcfNRQ/zr7xtx5zz
	 7wq3UdvylK4t4pZuA3DJWNIJ3sH9G7Q09H8JyPf2ba+q8TlE+Uz98lTDdtvgHssK/3
	 wz7Gtftfpo1Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F16C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166549445334.9306.12492942414834640634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf08ea0c35fc550cc44f3bf165824981276389ccec77cc43f7021e137191a0c
Date: Tue, 11 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665494453
