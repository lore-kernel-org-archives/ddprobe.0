Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A03D1113
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 13:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2228C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 13:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686923948;
	bh=VScxR6Kbz1H1J+kwHoGEi31Yq9p/TmZOq8sQVNwtxcE=;
	h=To:Subject:From:Date:From;
	b=bBvwzlbSXmSSz1vGK3uGUwcFm7r41oaiqjo7Dbta1gbZFwfiAWAtnewNMYw6jH29O
	 TB6/1ca5mM+6m2SZVtiXKw62iHpJihlD0Nc6RStKeodKL7myo8TlIE3IxRvp3ONmrJ
	 9+QVPUJk6Y5C9FPXkRr/ZbrSBGBHEhQdo5eL3YztWs+KfRvArR9kSYzdQU5+grFCIm
	 1mVFH4N52tgyKbJZErlhRzll3TfT4fhwr5SH47CozlunI41vr3hra8X4elNMDlTX9o
	 BvyEOYoIGfSUq3YkbMh8kIj9aj7JeBdHfoGhGFK7hgl/KaNdEX3IHm0LqjkVgKkNOz
	 8D1vWA5p9HgBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3965EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 13:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168692394872.27059.13885583790826969236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b272671e3665b06a25484b5d83cba868e1176232f7345eee66c686831ada6de
Date: Fri, 16 Jun 2023 13:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686923948
