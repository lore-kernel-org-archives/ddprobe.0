Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46D87C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 783CFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668834654;
	bh=QWea5hoWTJNE78obfAA9vd1PDDVaxWSUNnWszCUPRaM=;
	h=To:Subject:From:Date:From;
	b=ODucUKX1MXOwP1tlrY+OBI3bI74ZE/pKW9z5iqkKJREiCdA8VSq29xZsHoIlgnT0c
	 WLgFkoEIUpQyYHoHy0uDdxYNNwfMIebAxStiZcB6Vl/h9LtPH6MMyTeC83DoXTV7E5
	 F9+Qo38hkPqcSqkzOsHdDmSdU12L5Dw6tuEHL0E9/OeVopurAb+pAZkChnxlFLqBV7
	 6YmBwpfrAll5YYZY+v9HG7110McbI6UBTx0jp8P6vBU4qSy/OsogTcMSrQdYRXpkzy
	 ZOLlOk+/E2u5cpX+WJMCyttsnBqxfZ//UFzqtDPO1uRh0MgtIZOlSVaV+CBNgJJRde
	 lvd0ZS6sOi2/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D317C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166883465434.29336.10106344891053745342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 845bb36b77865b29d11cc4cc9cff1a93ff1a5dc6ede925a5a1ed93bc34ebc0cc
Date: Sat, 19 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668834654
