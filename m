Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF4C6FC5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 13:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4BFC433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 13:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678194545;
	bh=8l51GudHuUcRXecEZQKNyHyRJNHp85WbCEGnwS3KTYo=;
	h=To:Subject:From:Date:From;
	b=QzI2zTLsINwQT9rfNtN5kqYqwzyLhFJPmUQkinmsHuyxNuxIwYWxdPr1EiheOJM95
	 1p/LRoh1El8WSHpJFGuZs/TOZzrISdUarRztEvGtOcrSs1kxd2LO+XdaBsFI4KRJIC
	 HZR17mwuAqIvoyuhcgPghLr0rz/8G2UAAtGHelX3Se7SuVwqq0ZBmLrBc65lWH33Pa
	 aNjQhv88y34UapRRoTBIsm2IxYKSb9VotuwZ5ks94q4yKGtL9uQLl4p7UQaLq62ZuX
	 UVnUAY/4UgWqp9XMZ4aGydPLSmlHnnH+yc1ec66Ap1BCkzOtunJjUOKpZ/q/Pg2swj
	 3tlaUrUvA/UcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BB2C678D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 13:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167819454578.30086.8190903080846632360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891c038251277b7b408374f158b091966980e90cc4295831b58e0d3083eabaf7
Date: Tue, 07 Mar 2023 13:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678194545
