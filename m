Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A5AAD3B
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86202C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671835287;
	bh=XjUCHak4A1b1gT2UQhZOD0RfwxFH0RZxzXEhWwMTz1E=;
	h=To:Subject:From:Date:From;
	b=fcBUAs901DpOOq1noX7bgYuXp7+XJGaqQ9AMOGBWRgXHM/3aeDBItQUoMAcNDWGWm
	 OGrA8MJfyUfROd0TzHemvqbjBAQriFqpLYtmp1pEnR/WTaJ/BWxYwWyLcetNDQ5Tf1
	 1YQlNSbk70GPpvFLGILMKd8MdEZCeSbrfWRsc7Dr+MkrTEgiSeUnMfXJ/XFRYP5ePx
	 uGRWX5gfD0ulF1MKefxkMNIpAjifm6RSxJd4Yf4/arvJ38uhua2FixIrqCJe02AIEO
	 jUllRGTDP3Y/BlHLtx6sy34VsWediJZhV1RMQ3ETvkiRXN3Ma4x066Km8052HZLh4m
	 fCf2btX8GwNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A4F8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183528740.18723.8176827592787928599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f619eadf2106249257dbf5eb0487f4bb4be91fc48fef7370a3905e0d637bab58
Date: Fri, 23 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671835287
