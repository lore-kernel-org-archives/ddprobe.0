Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA61138C
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 05:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC95C433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 05:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681278725;
	bh=EbeQHasn3RB8SA7yu5BYWSiBBoTyYzkU+G/nF9VIfsE=;
	h=To:Subject:From:Date:From;
	b=iosWyPdumjslGUMEL1hXJtTyBuA5C4bh2pd/9rl31vkFLWMLhsRppwwj6PNl/X+bG
	 k8rirUzWOQb0cFDf7MngUK5IZNgYDfARXvlVffQjmujHxiHZrTdGJI1ZOZ0WCUr/o7
	 xTTt4yWqK47+GNIrYy6N5JBu6jha6v7rTJ0gC3H8TTYvu+DfcBs9ysyDNIK1mZAuYz
	 5zDlnYyQPOzeUuZMuDuXPUv8UUUJ/SvJjZE5M6G3rLqgKm0Zje1VRfcOTaSC35PyA+
	 cK9UVVlQvF9ClnvB5c35+XPDevYo2sCPVN61qsxB1quPh6ZKH1z+x/wXYMHWdb6wlZ
	 3/WjG4eYCk5sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC46C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 05:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168127872576.26656.13630621607609457161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7b665bd0074a99e1fa16d3043f2af356d77de678b80127eaf705f0ff028a97
Date: Wed, 12 Apr 2023 05:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681278725
