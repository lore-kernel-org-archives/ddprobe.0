Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6958F20EE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 14:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39FBC433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 14:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690727528;
	bh=Hv2VcrMt1pglY5KBBr9jO7aj1bSP1e5e6/dNXA1GprA=;
	h=To:Subject:From:Date:From;
	b=A0O1ffDIAusq1PERHZzoaZmXp+wCBfMf4RQTsc5dHvJ6D6q9qK6u8Gxc6Wn4FOspP
	 n9ZdiIp/hb/daYUoWzZjzxEEIIPNSW+xvqA8G4izz4+SKQaYglpeVfinYlPZd7gq1L
	 cvuL3HHe2uXNUKF+cJjdknJpKbCsxO1L2HBXkY1RE3rBx1ssalAmK3NxMUAsY4O+RD
	 YY5hGwJ0Q5/zm/5o4MxlDEZa3d9Wi0K7wodtfY1YVZvNcaWUOBhdu64Qd5Fd2JkPqu
	 27SazodwUFnmJ0dnJazGOJOaVXm7H8/vhYpAI92I+gIwk+6UM/sWeACM6KgfZr9tjD
	 e/EdYqUDA0IRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0901C001DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 14:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169072752871.15078.14336149965219274537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e270278e9f173b954944c2c6e1cd645240d7996cefc57e43920e0e4db65b74c1
Date: Sun, 30 Jul 2023 14:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690727528
