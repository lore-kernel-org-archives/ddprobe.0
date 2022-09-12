Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0047F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F3FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662954653;
	bh=v4O7lTEn7GQ4/DDFhwvQRa0gUj1AzZQVf20Qmu9l74s=;
	h=To:Subject:From:Date:From;
	b=rcu53agz3KKr4xfVFpOsRb44wNiRyJbjNaSDsCJd767aBKqlbCzcMXSXlzSSxtGj+
	 XF/tylCIeqoV4E993Cp+/EqelZvRDnAAr6AOGcmvXChM9y8YQc2Vo5ocKmQPkNNtaC
	 RK0fdi7/wDOrzzYuqaMLGP2x9apw4Bh8UlKNlfhRTSRLzl6tb8vW4FAUSoVkaSElgh
	 Kbub4Xl8drfhCwFp+IpAYHWUFTshiJDBV3SJ3euFCCpzj1WK6SCo6Mubz4Hl6P7B86
	 6xZkCCCfZBGxoc9YN0zsWqLckTCqGnYUiSjcf4nW71YHc2gwaZ+DU4K6MSHyYW77ft
	 vy+GDqRj8H2bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560E9ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166295465332.15018.18267105672162740921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be43403635e6ca4204675367545b74d2f7d7735dfdcbd744710e114b087e0176
Date: Mon, 12 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662954653
