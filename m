Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE9F33C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86054C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672666887;
	bh=ysQ5Bma6uWkDdPYl6qsxQ0Q90fn2sAXi9BRapuJbs74=;
	h=To:Subject:From:Date:From;
	b=Hjle7KNLaaV5LbxbaW3KRVZL2liyL/ofnyuLbBW0y361LaE5Uw1q0Lx/fIRmkLfr5
	 9iTH5tY/1lIYJHM+NsWNXc5AI2leGwx8SdgQm7siedTPK8H3uGVg8t2MMKB8SqCwxd
	 Rc8r5iY+Ak9pBmnl2k9GTgnaQ1YYd3zKxLh3MDghVEufEDzO5W8+w5E0yLA/QQMIUt
	 hOLeE44bg30Qs3pj4r1TGDMJ26lMz5VNXaIWm1bMLW/XojOG9RMFIbokfDZvfO/j8l
	 cctTwrqkUx/sjy16ycRmcjL+v0eocjmuMbzFbuROHbZUIdNU8jJ2uFrrh7wnLQnzzN
	 Hh8P+SXis45Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E5AC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266688742.31781.16470643827577626925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da5caf54fbc2953b20b83348bdbda9290975e3d2d4256db526cfdd16d571755
Date: Mon, 02 Jan 2023 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672666887
