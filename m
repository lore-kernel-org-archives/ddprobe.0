Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB88517D0
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:40:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BADC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669527655;
	bh=RZt9AfJ+d32v1xs92vQuPJrJu1FJ+GldZPpwt6eItf0=;
	h=To:Subject:From:Date:From;
	b=P0DNKk/z6M4cnqOSrc5BkdXC74VTPWUfvnntO7OtCuB6kP35vWH+ln6Z/hwHGVtXU
	 cMWb9DV6KWo2CHbdSa3lCLnDWcGjXhRrPXxLWUBqnasY9PeS8NaTabhLkZuGsjgfw4
	 +dSsR2RjnwK25/6UG1u/ALv9zJCtQF/i2i1MOekEnmhxMbxyljzDSS39lbxJlxPm/G
	 evQXqvzQ7Feu6tBDGRhBUyNtmdy/QpsxpwxZDykYMUc02qV2HYleVkB9R0ccPMUtvo
	 aau8UUcPZkXVUw2YCjs6xuDM7burMBe9XGpB+5of3am6FgGuA1hPY6sKwo6WiPtWdA
	 ILfQah2J2fRTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55EF7C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952765434.8256.1003218121577103172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7adbbcc0afbba52d8a2f7349ae467f23b4b84c40f8b23d0b1fd0d3c67cd21f58
Date: Sun, 27 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669527654
