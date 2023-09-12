Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E27182BE
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 12:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08D35C433B9
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 12:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694520249;
	bh=GTCWdlUz2o3OWeGpQCS1OKtQG7vG1umBKVvUJMWZ840=;
	h=To:Subject:From:Date:From;
	b=Rrpkzi/G2d9jS9OIZaIB/aq9fXLKak8ZW+mJ+YJA9vMuNHHXV3Uzhf7y1FbvK9w6D
	 Ujgl4wZsmctu0lT68r3pn0y8M4q3gbAtOwlPQ/I8M1Axnt4E1bEdhXcNnUh6VGyl3X
	 iAI5Rlf8CQR6XC6N2P3MnmF77/FGu8oICDLOZrB+qIqVA5kp6GmDcoltrgBaKU1a8w
	 IJvRCWcl3IMIkoSBD3ulWIGuCTnVjF/STRmiQ6wUWP8Ginjln0O/7Vtxh4ZO47bxK4
	 e3D382SZEvrI6wmWknqoGzC8+JhR5N+tyuuTdemJdgLuG5vMCM6xsnH/psatzWgqz0
	 bc1dkMDj65oTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5155CA0ED4
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 12:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169452024872.32434.16172601519216076466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b55661239f0a597b9dc574ef27336ea684db7da2cf7180e1be5edf6970e6dd5
Date: Tue, 12 Sep 2023 12:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694520248
