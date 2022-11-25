Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FE95C9B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F30C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669389654;
	bh=UIiYJS2kmrtSnE2oA+vXcTbBJqgMfy75l3n8tgz1wjg=;
	h=To:Subject:From:Date:From;
	b=V0DHSyB9jcE40ecuQUZz/j9Q93BL0XOLWKpndc66KzCl8iL/K6y20W+OJknRgpDz8
	 /OOp1x2RDLMqRHZ3RcAAtrqGr6xWHKJkBhH1kpngcMKsSApmgn7orUG4seUENTnMYR
	 v869DsjjKaQ8Lylt50GHejefm2OMoVfoXXuoegqg2q+pypsTHpa5ZdcdNRhfA/eAql
	 g4FdNtxYOcd2VJSli8CMTdF9XpFQDut1f5WAekADTY1Vf13j8tgB/McKH3rrqZ5bue
	 Rr6q8AfpoVkjnIV7JojGvGu9EOPvjWP1+Ta9NYnWdYOe5s3+MuFJHTkOy0z4lUdbnN
	 BgZhf6Cw4hP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E7AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938965435.29434.10281919382428870758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f435dcd850c668c8029bbbc1f3f1ae0c27caaf4848b155cd46d08cd5d396260
Date: Fri, 25 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669389654
