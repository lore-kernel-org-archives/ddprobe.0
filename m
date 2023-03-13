Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4881FAE
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 07:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED8D5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 07:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678691826;
	bh=TlRGBXh4LU4jI7mgzOeDrGAix4YiyellRNWFv4ZfT/Y=;
	h=To:Subject:From:Date:From;
	b=hGGqZu98fEd99alyOeQbmjJJHRxq3ClgxByY/V9h6L9w+tRrLxwhlN4i4lafIKCiS
	 CGW2Uy/gq+l503JfKxwSkgB0O/SWfuypd25wcE5fnvcyVlF2Gtadr/tui9pYMFUgWZ
	 +xBdcs4bvFfCVxPUeirEw8f3LrgPRPM8zdcFxD/Z0L7RFDmdQP2shrsr3u7znSQbWb
	 zjeaxCIa+OrIJvPYPAr7zAFcvmwz29zW2zVfB8as+p6bnq6xSn+nRbgCONd9fSe5ii
	 vIQjQvKIOYAmM9MdaJEaXQ3LHS5wD3aSocwni0xi3yegqtl7obBpcheW7sqFNaYHid
	 KzFzxunUPbnsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD370C6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 07:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167869182583.20452.6541849249620757172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c0e832f9dcc57fd6c0959751e78048a6266f18984229c6a10c37e8e53eb070
Date: Mon, 13 Mar 2023 07:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678691825
