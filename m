Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C5A1113
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 12:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4685C433CC
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 12:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686920348;
	bh=uZWXiks8L4EJnG5F8ShTC0gof2YA6WGcAzMplqvpK+g=;
	h=To:Subject:From:Date:From;
	b=neQYurax8cGQZbfm3EQzfkj2zEAF57LW88hDUouVRFpnDP+cynFAUpfWGE0vvEMEY
	 AnybxxEX31drBSAYzCyRXHXiairtzf3H6Lobya/POzAQGsF9le6Kfj4aouGJZRBWRM
	 YuywQspYaLbgsb8d47FZbd5PESK8QIyoJbQ3vWR2pPmA9GKoiFdPLuNY5OyvxY4e3e
	 6x7/hHqK6VCqTwgVlgJBeeo+lZy0by67R9r+T/thOWtQcwfiUBIdpOF3jBmbNAjVMx
	 q6jogkJgm+njv5fjDY5eaWNJzpPGZM4DrXJ6nclZBZj/avjJfycZzwtCBGuXaHZ4tS
	 TLo+7JyI6TEpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BA6EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 12:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168692034874.30773.9396249059822276986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b723f193260d4fc8d21f1a56d2f6608dcad761b91a5913a7c08092c2396df0
Date: Fri, 16 Jun 2023 12:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686920348
