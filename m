Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9E11FA0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABC6C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673959287;
	bh=HIG90Z/i0SLY/dOlqGIVAznfDqEjvO+FlCUF7VjkzQc=;
	h=To:Subject:From:Date:From;
	b=hYorysU0IEI0R+P8C2jAnOQFHbBj8YWSfrtH1kNTMOehllED1u2RHOMeNCpTU9dzY
	 1ZG7pP+ura3wE7BuWKyLZFmF3uaHJMbuF5UmzhG974OY9YZfVldtT1LifZiRbQ450V
	 vvHduzDTAZ7rTcrn4gOYq6MDQggnZ9Y8XRMU0TJ/2v5L88gJe8KNelV4X74Jbid5t2
	 y5TtmkTuoIupsQr5uMllT6GPdOkIUuniTyuW6ieo8TMDxCoeZxy32Hlf6HJyiIsU7+
	 1sEz11ffdTiVweX3kKCdiXqWNY7xiDoX5M5udOBL05MRLVwXl4iTxpbr8sRHQRHM31
	 OULJE1UnTDBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E24C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167395928739.29410.13853627151321529761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e935cc2152698145f0c527b867e3505817c380aba05a2c98835ff5d7b52f3825
Date: Tue, 17 Jan 2023 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673959287
