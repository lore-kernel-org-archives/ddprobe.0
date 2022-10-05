Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B152F34
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 664C7C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664979653;
	bh=wJnpKuEAqBuIEqgLWRUKwDzGInWqJPjqEN3fvZjH1Rw=;
	h=To:Subject:From:Date:From;
	b=jzmM7MsJ9BWCaoUMzxXPoqhkBxdXWGOIiTT6/zZ1KAp0QP6FNvZZPYHIeWvoDW187
	 Gf18lBHFD4WxocEmB7V/xvsbxc5KbGM6iZV9KO2RSCFphPmFUbTktYV77WyCglOZTr
	 ZsEE/fe4a/SROAzIAWToduArR74s2jQU6LPNF93GjU/HkZwKWzIWaUPyjd7vrRQM7B
	 uMFF6RIEJZOxlAXoBk0YriMFz/wrZtUbgSeL46sTpguvw29eIt5evg59pjjamFqsrD
	 8FiRl7ugnN3IZraoFyJOeRPU9zwhcMRZLQrlFQ5OgPpaRpWmC//rdpNdeH9CDdQacI
	 U5ECEGOozwQAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500D2C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166497965332.12249.4578129557576813500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac6b44ddd2e9e17ee2ac14ad62147aada22738315156223ff02ce62bcbf2e98
Date: Wed, 05 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664979653
