Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06F2192
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6747AC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664785853;
	bh=5MHkFIM1wvHOh7D7iOJMsOa0oiFjBw0PgBEihpO3sC8=;
	h=To:Subject:From:Date:From;
	b=RWgpozqHodUIXTx01Zb2YqbR1K18Pt5ZMBss8zzIGZD9IUF/Qz4xca9UwvbCVm7jm
	 7flcgZmioy3VqzbA0CMvVZ2PxgaEw5WiFwbNZcZHglaw3PfIodnHe5lrcpU6NJpnfh
	 klhkvuumH0zIQ2jnVN4dlNcHMeq4Jm9Pt4CW1yAurQsCO5abMnf0rdQfQ/8mScVozV
	 9bIX3qNSRavpy18Fsy0UTU8PZxbi8kdtA+Z8MzgBfa5d0ItRO8qbocWLksaxTooUWb
	 DUxmAPj5bsDD4sBY1/E69BRsQdE9VttZAqXgTsn/341nx4augAxU9iWfM8HsVmL66l
	 vZzunfX0dXCSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B54C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166478585333.10836.8591728486394085968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a62807fcd0009c12a82f1c16ffcc7a6f32efdee0aef848734498aacab2a0c5b
Date: Mon, 03 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664785853
