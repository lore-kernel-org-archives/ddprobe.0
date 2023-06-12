Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53097BE63
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D082FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686611105;
	bh=GtH+u/JwvmFEN2Nq67BHuSYKWya6SpVLPRuNrZuef7Y=;
	h=To:Subject:From:Date:From;
	b=MYRNohBQZ+N25/ceAhCM0Vou97rjMQ3vrEmfoXL8TKqnG/0UnBLzHsQUzE1rnMkl8
	 18SQjA+ZBJ/b9PMmdFVrfZb6x5O4oUOLoIC/c7AMt2d7EWQeDVQEUNnn7ktJ/irNRy
	 XRFnGhCb21WcFsIiwM0HqiuY2FHGvWKGkKNcovmS1HFkCBHJEXOCcq7+h1mfdX3swb
	 JbQT4/oEUpXJ1G3k53pf4hSe4rYsaO2NLzhVb7Mr2H16eJdR7G63EOKkOgNtB8T29B
	 cqc8qYxIXvExFWPN1DcAiyyRj6Yxcp+oZ7R6Mr9k3z2wb1nacOiFrhQ/CJJua23lni
	 VYgNa3CV/hA3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4662C7EE2F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168661110573.7151.16620978304917627815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa65afbe71edd946236ee4f915991828a657f13195da090aa2dea76537a0969
Date: Mon, 12 Jun 2023 23:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686611105
