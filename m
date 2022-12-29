Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D3E1110
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD3BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672342287;
	bh=Kp761RynZK4a4CvkHM3yIJ9wcJBDrpob226W5rLy9Vo=;
	h=To:Subject:From:Date:From;
	b=r/EEJd2+6JYfpSMhMUTinYpfQsAO/ZC4MClXjBNba7AxEdWYfwfmriG4nUQEdRrQC
	 TBePnJq2l09hsAJW0fSdZ+Uf1I+5fYHbuvtCNpUW/KoJqf7IUnmVIuGKRQZZrkT7xo
	 q+jswmQrbvIEyQtvVsWeW0W2ix7ewJDowP285NesvnvNGPn9ppZaRUKMUWp+G+wZNi
	 g78Fm0yqRZrBfC9C7Sblv/tuvkA5bHuU/PMy2Hgnrz4eWMv8ieO9CBt/9XArd4loYM
	 ZUgbkXm1XklOTTtvRnr6B7U4gx4pPuMkT0+ISlpBHhHxzgDk1VQyT+a3YgzHW0LImL
	 rJlVbthLq7+6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CA84C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167234228748.1086.16605166769187750522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898c53bba47095b2eee2b9d41219b0a67015f83d7f3a0491f6e64b6f8f40f3f0
Date: Thu, 29 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672342287
