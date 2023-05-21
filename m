Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D3610E8
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 16:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC055C433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 16:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684687326;
	bh=kgYmOG46djEBrie3kDQs5lSttP+ujvLX69Zrij73lic=;
	h=To:Subject:From:Date:From;
	b=V7e+kxZc2EHwAZ4cMtPIU2NcXbpgWAABBsgUySDqOqwwHRyTTTAHMzq1xSdXgFKKg
	 ufu1+nx7ShcvcanJnsFbamnlyQipsm25mQjb+QFVVTZ0sG1jJ2S6McAy4mY3m2W8Vq
	 WqujBSFnqChGssyVDqfbIp89/VyPLUq1XVegr+r6saJ3lX4o8cVAM1gCNQBUG8aYOM
	 Z+eVtDZzqMY8KEpq1Qf/teqsriVBbOmF1Q9CBMXy+BaP7vNupNGCLLeQeTnGXkVepK
	 Q6eEX5rzkHuddbekQ2Q+mvH039pS0cDUwK9Hco3cgrOl3SfGiGzWjPsuUd8D/KgTK8
	 uf3ZKBX3nP4eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A03C77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 16:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168468732580.31723.13205046901757182964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4faa7b9f6db99f7bd74286aea4e62a83fa149f811db3e2878c7e15b35e4ea77b
Date: Sun, 21 May 2023 16:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684687325
