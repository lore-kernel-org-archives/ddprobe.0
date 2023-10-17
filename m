Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D53B2D78A
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 19:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXKjd5Cf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36A1C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 19:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697572028;
	bh=BX9Claww+wR0Z5lR00ouEP25UY6OBz2MLnv20FX8gNg=;
	h=To:Subject:From:Date:From;
	b=HXKjd5Cf/AyEyL2WPaSV40FNdAvkvuhNb9Z/3l3+ybS6ab+T4dwDDU/7ZqtGyPjqa
	 CnFDKwdsrEJQ2CwWgF7KIy4gbg4W9gfhtm2sBhf5sEsst416Q05JNJ8zRUcc/4mrGy
	 KDfetJS7SXY67cESQ5T2oBDPQc1DQsi8EKozrtQtncf5LhJcJcTSedDKWR3o/xdHD7
	 HYzNsuBijfyEZDFJ6ofcjuMSCKVy6+AMy8m6WhKlqGc5hgfPmWdAHvUCW7i/Fx26n2
	 JK2Ckt7XuMNaTW/iEnh/qHbB8E01u2YCxbnE1w/6PQ9kSQ+5P1d0F/l7GkQ+wKVhKz
	 Mla1ZhqJsNTnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69E3CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 19:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169757202867.12908.13212831205338491066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b113618789536292e0117e96792a5e8a6fab81ea301663c5efcc5f450c7f94
Date: Tue, 17 Oct 2023 19:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697572028
