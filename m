Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E748915B6
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B156C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674024087;
	bh=z3cdzw8l9APGsl8mGMkCMgj62JM2RdxAtEEo/7HrjLQ=;
	h=To:Subject:From:Date:From;
	b=ZzXOlSAO/dqN7Ca8/DgZDZuyLcLqzo9KrVEes9QKHE26ReqfjQ9kpk1CgbPh1kaRZ
	 WVWWqIakfYFAR12L12TI+C//UzelA0ThjZk1LH0wLGb6raNZvXNtwtPTZKD56gVxWU
	 UlvvRRw9GRrvRXOn1oxVayNXV7jg8x8KVksBmxjweSeRsNKd3zOroJ3FHepJpZ0hCA
	 bPSmDIfj9sGxZHSDCM6IHW0DN/I2QQQqNCz29lx1qcEmzbft0NSujCgN/gW2ym2WYQ
	 QfMSA+opcj3Kh9SI+/fCBQg79l75bTefEbvKPcojwoi/QZAh/o/1rtjT9FnHxAr20X
	 1UKDgVVFpnnaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70176C38159
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167402408743.29563.16549636785785804213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df768e3a27fb4facd0ff444630dcb7913a2ac848f048ef1617fe6bb63a176fa8
Date: Wed, 18 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674024087
