Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A7AEA4
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 07:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DB7C433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 07:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689493268;
	bh=dyZOg61phfYie/kAB6qJqSv4rOmcUIs0MaEh7IceaFA=;
	h=To:Subject:From:Date:From;
	b=CPJkKwijuYMHJ5EK3A4vQBhlZfUjCkDmeSABRf93Zm1BpsoBPqPACglG3ZvLfhiLJ
	 i+xZZRiKB8OkqMZkq4HHC6pMP+wNr8qXRT3s2eo9LmwbrIm5eWGLzkid5WbnfAOBKE
	 zk4lWrAyitJvErUhpwOyqskSECnoeBVsYQ187mCrIpknqdy2GlZIvgIUL1ZBVGMvu2
	 8K7PBgj0648GQYvmSZ8Ob+YSjbUo9SaqOEaNnMi2e7BnYphYoaK4V3dYOrdMa9Kp8Y
	 XKxIikQ+GvfX5PkxC796hlR7nzWj7vrL36wE/7HFK8iW93pMUdi1+OLJMze5Ud4ZoK
	 PDAbaqDVd/oBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9375EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 07:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168949326868.12805.16779980903878737330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b391fa857f1d02b4c792bd657721a75d04611cd23ec015b29c8e6ee377d0702d
Date: Sun, 16 Jul 2023 07:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689493268
