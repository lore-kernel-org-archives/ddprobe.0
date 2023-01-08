Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DD01FAA
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA8AC433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673164887;
	bh=yBaVMM1KvErBrPzcgzcXSWV6z8Y4+XoeUc36w7YtxFE=;
	h=To:Subject:From:Date:From;
	b=ICQHY133jy50wP87cB0qclj3QmKLGYFjth5WJjeRKgLZ69gIDpxdKnbts/tU1xZDm
	 SWzAT1VzMeGIZY4rGgT4DrqAjoqn1s3v5cNSaonlDncDWvyHvfMJBmLPk3ISPhbiR2
	 mEAs/cXoVI1GSrvvBJ2WLfr8j3jUpH9KTCpg7miz25Wh1U/k7FbuOnFNIL3WTx0yOV
	 0aHM6/UfHADXhy2iUArhwS3UpBbL4t73PeASeSMgBhPB8PY0RtQc8BgtIvEUHHqHFS
	 R9ifFmQIaR14GCQRHIlcchU3OLZOWWXTKlW7oH9AQD0IHhgJXCLPJf+PK0AQUEDzcS
	 ZQQYPCA0irsSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FDA4C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167316488750.32165.18132525646449820758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceaf86d48f642c4598eb2587c440fc0986b299a7fe59fa75ae2920b552ee3b38
Date: Sun, 08 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673164887
