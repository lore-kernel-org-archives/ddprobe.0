Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95867B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A83C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666653653;
	bh=/NLrnQbkV8kwrtVMg9F3GUSjS5VgE806eoX0fbRMWbU=;
	h=To:Subject:From:Date:From;
	b=T3QqkiXQpN9pWp1E/zjC6pLdfueP0MbYQJuVdhK4bflRQNVc2O2wBRmpziMCu7YvP
	 ZLLYYwOtZKXicnvtt3pbacHIzN2AVTJ2c16psDI4apzDBFMk6yVSSFqm8VdMz9zOhk
	 WY9vRQVtLbUa1ZMh1TlNNDSrCDoC46NyE0uq21T927MJKDhyP5Kj3hB7CV0WVyeNDc
	 kD0X6VKXKw31JpF5fZGwKdghOz2SAhbLAU1gSxhHmvXkTQNmaD5XzIOZ3gYgZOeUHJ
	 N56z1UEqpRSZb92vGdcspMHE+YOpSFwUWFiDBdzwBdgXcY7HdVeifPMg8/tlkk0sHC
	 4i67lMX5H3GIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFE6C67871
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166665365331.9568.7306496613122877553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5234bc51d07b9551553a1406d66f25f9b3d3396ee4abfaa4ad4f8ab365e48a42
Date: Mon, 24 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666653653
