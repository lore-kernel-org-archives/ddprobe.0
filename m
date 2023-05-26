Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4DE2CA9
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 21:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E08C433D2
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 21:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685138165;
	bh=rVZDxy2q0iCZPb3ZRIr+gWKkHdQvH5J4uW0a24nlXBs=;
	h=To:Subject:From:Date:From;
	b=s/t1rZlB9A4dNFGSh7E95vxHiIzyykRmQnJ/Y4INA4IJP7nFn/M9JbmXFysdBTqMZ
	 ciHvbvOQWZkvoMr+E68eMdj43R31fb84yQLOP+GXhz8WjFQ5SWHSFp1x7NtQWGYLgz
	 HMrgbqTf/proWD5tJrK74tVsRa91AYfiLrZ0v7APw7xFmjZSyruDtphFWUUq/vVVJc
	 uWDm65bRy/cnsG2HoX0IKqF75YFiiAUzw69yhE0ckTkfNGP6CbsW8wPZQ5fuZ+k2fK
	 zodb0PyS6vfq7O3Au6wSrbP5J7nJF5yCWO8AEgbCUbZhz+ymQ/NTQdKU0EjrxZbdFJ
	 QgycxDgh4QwNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6710C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 21:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168513816579.17905.1476684824373379432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aaf4bdcd2f5b6ba6d161074e29638dd78ab758ad7d1c90a06356a55b42934cd
Date: Fri, 26 May 2023 21:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685138165
