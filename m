Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C403D82
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUE25QKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84AC5C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701548296;
	bh=ifrAUjjzI3RmpxlyOozHsrosnIOsa5TV86dh2hZyr9U=;
	h=To:Subject:From:Date:From;
	b=DUE25QKaPc7CnJL1bUHZBWrtSG054EE/h/xSJgrE/g7ZiuDIOlTNc9Ymt5zcx4P4g
	 jCdJ+B/VXL1yxu2w9zA/jU6F32YiHgIIe3fmcw2t0kq7Zvogssy25iDH2fmgLBqsSK
	 Bwry4PuY8PL17mkGghNW/bmBrmVz7N0pNHXLk7Ab4FmINR4kSB9T1LYPY/QlqcM957
	 IX4XwIb5wk3GgcwdjkQgMXBZE71JuG9xaVeLfMinRopSg5J+NxBxdSAhM+CZS0f5/+
	 AbnE1m5wQojeUQzIJNpiwKJ+IWVvreQeErYrn/Tt1DnyzNzquPinkySuBQ8kUlKdUJ
	 mO2RVN7dvuldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67784C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170154829639.13374.10368013900701734053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d4d6e8b5edb5c39fef462505d3e73ca5bc91cd2a3b1bc0f2cd5e2e56a02976
Date: Sat, 02 Dec 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701548296
