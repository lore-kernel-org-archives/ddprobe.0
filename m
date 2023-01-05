Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE5D80F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE7EC433F0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672903287;
	bh=cmuk/qeIqhX0v2AyHm9ePWDsjmiiZpJw/3T2NS55GVA=;
	h=To:Subject:From:Date:From;
	b=WEhHGY9YOCAorfM13l5fMaoJTgw/flAPxQRIU8o2AB28sm2iMtO3MNW+pHFaMrOmH
	 jlY3DEhjvlijW9DuAxRc/71mEfUptGKe/qGc0/zvDE2I94RTchv+x4GYzDv7/5zY7S
	 G4yywm0wCKBgU7fsAPtMGhZQ0bI1rMGnahg0Bkl5BMinzV5Ro7KE091OL1p8ycIP3/
	 3A+sqbtAtcp4265XDMYmS26Q+vFZTTfJk7GWFZIoeS6d1ve6stWZ8tL4zWJij81s4t
	 Hw60TfXhhN4EUI0ArXfGVocz0G0ZTEd1CfznJbFCt2UVl7SUlkxWdqBaQsB3+E4uFE
	 NEBP9p4PgFH/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BCA8C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290328743.21143.15883319038505275667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46bdc85566a437d56c3ba866302e53b9ff2558f2a09363685860951b14e904a3
Date: Thu, 05 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672903287
