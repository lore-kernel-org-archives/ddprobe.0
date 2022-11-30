Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D317E9
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F14BC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669786254;
	bh=+YniaC0i5JHLnUGIdFcPB25d6fA5Php0rLfhhSM7Hxg=;
	h=To:Subject:From:Date:From;
	b=mAcO+5rWgWiTtiq5kBdLRBFYEY2Jd2LluUY1wrtHhLsu8dt31IsymWvKf2xqt2I+5
	 kopIsYBCiQA4ku9ggvf509OD6+MM9ebllpaboiZTWP3lRKwhFNa0GQ9fb3pZ36jXXz
	 q0/qOm19oCmAYxj1M88UWWqkT7SPNv6jrqqxTHDzTxsrAX4JWir/sHsCDpY53emZaR
	 MX34iP+69TUXYeKcIGNwy4UBZa2I5upk+dpFrDoUsUpYaGXF9jl5vbv29xu71muNzw
	 o5v8ibtqpTODY1RaeLzF8bHtsBKxx0k7kmm6iMy1krVbp7KQ8ftlnfsHfXtoBMzL5J
	 oUSF/ryZ/3Wxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A27C4332F
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166978625434.32429.343093581780461098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ba5c3cda6f6d8c7bb6628b8ba5eedcb0e2beb78e72af3567b858ca4a0056c5
Date: Wed, 30 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669786254
