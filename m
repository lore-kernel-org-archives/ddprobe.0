Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B051363
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 02:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E684CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 02:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681697825;
	bh=CvYQfWj5Cv0U3nBuLMkN5/GPNLDEqpKQ+rxSK/YJ3Qw=;
	h=To:Subject:From:Date:From;
	b=joQmxPs+Coo8X6fFUgmWBJb9508SIcFcUvwNIWno1NW28pOg+NbhuIkD3JfZqmwCD
	 5E1WuEPR8JrPKuOxypOjffdn7Lh4Veqzx0nHuacVk79fe0w+a8h0AOpz9ArV2lA5l7
	 efDDicnz9dX8cg4Mn4stBE1cU0oRPLGyE9Q0ook8+2D68cniee6AJL4mKE1W8JFn33
	 9A5cJKVTudLmuyLmPDs4OYwhxcAD0oebf3PjZ3jxwTz2LWILOh43l0BUpboT/Le1Fs
	 m08aCcNaWBkn599/zkyXHn+xViJhGBs8jIA7M/npS5QFb6bTicqlOtwzQVsnZTzSn0
	 b5JZ9c287GfkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7378C77B61
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 02:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168169782580.16614.1689060200978225857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe34499fa1361a7c2ba6d29d81d1f63d8620ae1f8174ee9e3471a9ad73f633fc
Date: Mon, 17 Apr 2023 02:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681697825
