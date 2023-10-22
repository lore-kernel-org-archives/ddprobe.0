Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E16DA51
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKFiDr+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8409CC433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697965696;
	bh=hpsDQDEIh8IpHryElafeBszLg+yDOR/XXiTKWYX1mxY=;
	h=To:Subject:From:Date:From;
	b=BKFiDr+FTxxGl/UQYp+jYo4jiX7AjbSrD9PTlgSO36Rkvl+TeHU6yGBihHch8p3/n
	 Zx9oG/9/R5uP9TQxcdVtRUWcPd7mM4KFByeU+PZEy3ys9P4Y5jBFQHrMWskn7tBSeb
	 sYRMEl/MBuNXQADVppPQedp614Km0IPCagAd9TjpFG4E09jrXJojH3Kg9UI71UX/CO
	 9GPKbI0Sgxz17Vm0+X6Kn2cLBopzvBrL3N0cD6qH7iDpdFaPO/n5J0wPGU1jSb8bPv
	 /YHr04LciWZ/QYOXvxvEYfSEkbEN0q0nLPJL02TldWNh/evGsat9JOOR/yx+FA2SM3
	 lt68BIgyCPj1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BFDC0032E
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169796569638.24269.7300874338931219242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79ebf0bc4c9ec5210c102af0edd9c2525a842d87ec67c321b34da5f3a4c7c74
Date: Sun, 22 Oct 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697965696
