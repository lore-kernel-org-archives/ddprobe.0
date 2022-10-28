Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B809F12292
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68350C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666988454;
	bh=Om+4+vNP3ajkwffJrVQgP9sBtVVbxKRIP+5kjC5ISGA=;
	h=To:Subject:From:Date:From;
	b=eDUg+u65SYmHu76n5EzXKnu9tXlmcJhkPUM4jQqpN5NJuPqaNiEwKN8xrgpgblmOv
	 FYT7tPbPWsRlLpBiE9M2G9wU8z6NKLWi2pEn9qMbgpdtnVNhWt71Blawt4ZQUV5wZR
	 nRq0Sa65oT68EROSpM7VrngtdH2abgosiRhLFmQeEwYJUTciXstGPRiA0WgyX1ypOD
	 uBhUvc1yKpcHaPpRIoYYRC/8tJx4KFjUipB0VKeLlzh6NDpDRWzatZLazeu60QVMeb
	 Uwsnt1OEvOZHtHha11BWdhgcT8McZFyINyqlTIssjdMAHk5Uh5WNrdvG9dq8Fd2Kia
	 +28PCp7iLNe0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5168FECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698845432.31904.4464683168405891380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d9fd42e573a67ae17fca118a0f69e21f27f3b8e753386ab560ee6b1d35868e
Date: Fri, 28 Oct 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666988454
