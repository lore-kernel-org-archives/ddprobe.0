Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D25B10966
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 18:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEFA1C433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 18:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684346706;
	bh=XlDkik96e7vmWnC7giR6aDBTtMElRFPeNvbnU1wygwM=;
	h=To:Subject:From:Date:From;
	b=d5WrhH6XgAXuHo7AgnUp+zUiYAx056/vUnvM0zQ4dGGRxymRXIBcAAjw9zFO47kt+
	 C5THfDmz4KO/4m6o216wIqr7DEUnCRb1VIx/CQBjnwk5CKZTCw5KGaLeTgL/D/D99t
	 BbkUqo791NQQdzS79xcrlc/qf+jZLisxZHIxZL7ZJwA3CE3uQtfm0vS0Fo7U/aoIlM
	 B901X9Gg/Gz+sqXkrzPFIaGII3x1/ShhslXKBHF7bY99Gboa2C+jLyG1B/PuzoONYo
	 p4OmggretVxt66Xkj/0WZLBkzcxNULA/bWqdxQV0+AWGzZWkSEwONXVh54vNSq0LWB
	 fnzlFTzSUBMYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0F4CC77B7D
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 18:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168434670584.18983.13798205663411184267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52cc102e05112a3497eaf7b133c05f98620c4c7a9fbd998dc6f59e584c300538
Date: Wed, 17 May 2023 18:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684346705
