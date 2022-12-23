Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9FD17CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88B8BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671796287;
	bh=n4MXugU8QsKh6WY8zvUVqNhwsELcGJI/kq98/W87qTM=;
	h=To:Subject:From:Date:From;
	b=e67NPSIV7+GFTXEI6hw5zwtrMyek6N5/AlgDgq9EZf130o3QL4Kdn2hZyeuiWK6t/
	 SuJPKI3ugjjoEcaRXNOWX8Q+HJnE1COPaIEuCJz4Pc66gqihKFpFt46LXQ3Bn3WXMb
	 7GDQTmy0drBt4dDUE78uQdSAfTHpmDkaQsGOv3S6qE6RXhEyyst4R6uTQXFW4d++cd
	 k2GMhICsAOWAScVp+pVhjXUZIMr6B9ivZQSPUC1ZJkzFcrDXfs5OjIir2nNj7DapcO
	 ++YdLc1fjVAF+G7m3sa/h96sM2uow4qIB78Oj9hZbtqyeMklKjKx7UBTT+IbKogwpH
	 dONAcv8umoL0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68536C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179628741.31686.5819586821780267499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e0a3481958b72256d2ed1d430759d31d71203b2ae4129b7365f217a2e789eb
Date: Fri, 23 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671796287
