Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5B91C13
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73ED3C4314B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666872654;
	bh=wKZJvg0UF3+GSGOQCV3/XpElIfL6Lv6pAuPGdJrjqVw=;
	h=To:Subject:From:Date:From;
	b=WU4qIq5+3fuR8zpa5IZJ81CqxkC0hPcV4VTEANkrfiYvp/PxIonbNjat+vqRqAtiL
	 HMjtydsiI72/Iyjgf5sL0rfMSNt6scd2EJse5x/dHVe7fuRUwLYTmqAeIjZEWIi9dQ
	 7YoKQNDAqAxf93rFwW6lw4ksDG8bOg2yv+Ui9U7qYaVGaXWkDFyOQqKiU3gXQz80mp
	 365E3e3D19n3onsOcUPMwEQ99o2Jp7vLE6oouCuTs5hQFR+8HyB1iQH7Tyy0Cw8EiQ
	 lNoHgkiZV88ISZ8knCZeydCiZL6b6dlWLyN6XcLtyODHsYeabIuQCxiHS1BjVhfEJ/
	 tLb6jE3mkqSsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5941FFA3744
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166687265435.18520.9905208946976545946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efa0f7a8a71a17c0c506cc56df7144cad7bf6b690ea2d89fffed0d6c3478d2e
Date: Thu, 27 Oct 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666872654
