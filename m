Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58015566B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 11:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD49C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 11:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688468768;
	bh=PstIG2kF4W9aNqg9jOY+CQHnFwQ5KTfA27Fq0LzN6Uo=;
	h=To:Subject:From:Date:From;
	b=mVIc3TXdY+FGgN3oNcFmZGRVkm0aoaz+lObSgSMU4essE72gsJ+Ikf9e+HRo6zhbm
	 PMiwxthoVdZe532dcyUFvaTGwCge6kJBo0vgNt6V0MEdVupmzXeOWcW+YQ/b5LmDf6
	 +FiwGEZ+qh1B8+tZtwj8fay1vWcGOXkV0BGXSZCqTMOOYdMg8XMEKm1OgpujqVN/Hn
	 hmIaFeI4qp2wjB0vmocQkbkZUqZjADwdLEMXDNNxBEpTXx7U/XHAz3hnEjm/btvh/w
	 JiM2DUuo2Llkg3bTDpSpY1sCvfqzh+MN65rcT2oMDQ7uHnbd8aEa1/QGXR4sDvGPL5
	 9Id3lQ2g7fY7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDC6EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 11:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168846876877.29789.405078820006465747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a048d930c06d996d983b09defebdb19b45606005d3bd95b7c49455e3c9d222
Date: Tue, 04 Jul 2023 11:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688468768
