Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6A4171B6
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYG06D4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804FBC433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701681496;
	bh=Mv97dHqKVz/X/2azKBvFFhLAWskRHu46hcaKyP7K6+U=;
	h=To:Subject:From:Date:From;
	b=QYG06D4unB+ShGgKbVtRQN9q65C1hPiysZ8f4y7uMzt1kXlxGIeftBwrNchr2rX4p
	 5HnkQnpnpcBdvB+7Uj5qvXdDWRSpNW0oRSspzoN3pSK9niRuxru7QeVHneMqgT0aR8
	 n+iBtilbbDbYCU0KPyzq+NchfgSe7OjHTIXBluB3lXtU79zFu6RTpualbzIiU19Pp4
	 laFNzMutukCkGKfEarMBFm98nRFBFKrUlWQ0FrIm1eFhFS3qqXuphMKM5evhMiTmvw
	 Hnp6Ndt1lsSZQlLaibgAZR/4IQwmM6ugNNMpQezKdkSNYiz0uGD5VV9BLIZw5HgwC4
	 YwtsCzdaZK8VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE82C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170168149638.497.5725650672168757069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab61e282200d08b46d0c5920b5b96b4698375167ff25f29252e06ed24d883de1
Date: Mon, 04 Dec 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701681496
