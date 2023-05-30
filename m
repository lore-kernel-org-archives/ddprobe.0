Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C0B63A5
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 02:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91F5C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 02:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685413925;
	bh=3d44F2TJlPVB6rpmaELN3Z4dD6/rILl6zsQ5Vd0h1j8=;
	h=To:Subject:From:Date:From;
	b=aMC+VHGB2gSPqafFVY90Yn53Uzl6gNONQILRWaCJklTY3396hsnmwm08hEOrWhiUe
	 XZfzuLKFME/UVvmq8aGuM++r/A/J7zvl7R/6AesOr/fU508RI19IG96W2eiGr9+yzX
	 jYxta8/bepTqiw7rY1G9szVudVnb8t6OLBugeuXqlPJYT5XvIengvG9GL3a3KKDK/s
	 85FYLsrhPg+7UVGITZ5YRUoXhQmIQCCAFs50aUKSYaiEKy718EknmFbkUMyIkAuW6s
	 VpIH0dhXjx4RzcFzMHUYT+87eJfEdxJnHXwDhJ/8oRzyjkFxzbzdnoVrY+foHZTnZ7
	 UFIHzToBxuHgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC20BC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 02:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168541392576.22122.16662793628660544441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6151d937e1b0ae2eec43315444b25a42ab0311c304da2baba15c0b997144d6b
Date: Tue, 30 May 2023 02:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685413925
