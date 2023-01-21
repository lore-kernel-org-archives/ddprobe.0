Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41585190
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FBAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674268325;
	bh=kqtK8CtfxxgBvwRpy1PsVXycoYb30n2JhugM/scUJjs=;
	h=To:Subject:From:Date:From;
	b=oVyVy0E2PLVryqic8qPIYOJI058Cj4YR/ntKRyu6jYkjmw630AporYwHuDas1hjEB
	 8yWgDsSkd4nRGIrnPKu8DwHGFTLi3zYUoRuqrz4YSnyQXzHqBDgzC1+E65xVAA/JDh
	 RhCo9Brl4K0MCLTmYtkDEYEQjgEgrc7F0Eh1ceGBfStzFWlXeuQHgk+KHWDRjBsFJD
	 k8fEjKb5h73UHQkRMrQFbzHrA0ySbdf+7Ahzw2WHgpKIM+0ft7kIE0ITd3cITw29JC
	 mmfymnGeJfv1bInlGIAC1hcGrtDou9TpkUqheCQwgc2/nH0+rjzH/e6g73oYZm3pTS
	 OJQHwmPZ6H1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB63DC05027
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167426832575.19644.9023508215183469569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a34210032018d28d3b1732963ec6f519a3b1c89c2d0781da8edb4d1ad82a40f
Date: Sat, 21 Jan 2023 02:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674268325
