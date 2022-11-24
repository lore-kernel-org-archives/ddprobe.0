Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32F41FB6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78211C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669275654;
	bh=uQkjyQ5qD5RJz75kHvzElHyfNy+3ySiBtRiUL6PdeDg=;
	h=To:Subject:From:Date:From;
	b=dS3GYoXocJxk94cRVzzkzNNFxh8QKO6jD6G+65oecP0mw1BIj07icQ8AKlnW3gMfu
	 2EB7VIKsiWw8L0zeMRYVwPYN6BP7B1Ix2c4hGE3YwUm0Vv5fnQsweg/v3wghnEjEbM
	 8n3eeIA12w/BO6G50oYEBHFpCCuz6jiyYXXqEvxXwnPdwjut3cSpM70XrzwMsE4i65
	 3RRmmu9XPiNTmUbxvvj151+qdmhQGVBHD/T5i9FlmqmRMOAsjAuYMlWwN8rDuTHce3
	 xOdA38aeuJ+bikkx/UOSOfAv8JYsqYXP9EB30waBSHFtZx3SQbU/HPQlUC3b+2yTzW
	 SbxTslPOqGaSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F63C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927565435.754.6193729926102300579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654e342461a8444a0600c7eb9555d6d11e4f40d52f13d9a4f5de25f9b7b7a094
Date: Thu, 24 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669275654
