Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9E3EA8
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31154C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 23:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686527586;
	bh=FwNHu0GB4MKAOL76lH9EeKrS2hhcXoSvICsrh0dg1N0=;
	h=To:Subject:From:Date:From;
	b=s+E2DP7H1pQyIOST86T3w1OPrfyahsx9HVW/IIm+i42L0057R2RkVy+rdMHqIxMAA
	 +IVgZcSwFaBcCSx+5ccZvJqQptU7W+5CBv/EDTdV93CNGCK3XZ1U5TNV7jhOwG19g/
	 Uby5/JN4zqvBtuy8x+AsWWkrF+j+YdyR6TDPBBMPRrMHE/pklFCcNacXQK+k18z2zG
	 xZ6bhBFvzr8r972S9yQprECKMNYsExgnUeDTM0UVmqUhTfnZsrDc+f//SuwFoSDrkW
	 aQEowZTrTrNhcNfHI02JmB/Uqr/SYSYCy8nU9Rk/vQzQAzX7ZOhTDA9omG+Ufa1Ecl
	 4uwcwrHP6jF7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4123C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168652758580.9066.14675250845864500382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3cc09bc33a5236465338ef924b3bc37fe6901d997d7ede8e6aa6c42eb4c9ee
Date: Sun, 11 Jun 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686527585
