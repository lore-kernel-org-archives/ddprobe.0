Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD7217E
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7906DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668821454;
	bh=RQInE4AP2PD6YD1VqCAaFeyllkfcyeldyF0znsHS7Cc=;
	h=To:Subject:From:Date:From;
	b=ezeBrZhHflyhqWhs2K9Ia21PKYwCVvX8o1MtGh6Ag7YXDcc2FDfYq2uvwWR4sZa17
	 PZRmuqDAUZc/uW5BafvUc4cMHpxxS+8SNEDLT3tdTSwhgHopVhB4rLXo18Rh4Epxw4
	 JSEIo1Xo+5nIncTXRG7VoDc2Tu5rsMNnRNf3BVQpRHLOikhPBQdU8sVZp4HPxWEdqa
	 knjFr8FvhRT5cLPRrncodW2svLBJBYop3uRRlqDb+8dzRqlcOL+MDApq+RGa19tQLg
	 ruOsVs5/8OKMdW1TckvEBibjdrRa1bedOiJycDalRaY0UJl4umINaRiGd04l1aGDoJ
	 jBqZP9jmfQXcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD7CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882145433.32565.12552311576250717190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38b9c0f808e1be0039ee3e11430ac34f202b094a559f6a54d197a9d03f7b454
Date: Sat, 19 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668821454
