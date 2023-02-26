Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB1E7B
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 06:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD498C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 06:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677394565;
	bh=al6J1n9T/ehWpOiY51ln4GSeB+kVR824/eBNmBOkV5k=;
	h=To:Subject:From:Date:From;
	b=aCib6n9SzV/0mxi7Lzw9C+vO6FJ2G1zQsYo722nKUCTBW7bCMtX8wy40kVgTQ1sl0
	 mSmfuCwyGFgJLQ8U/aFqY8U9HfB8lJp2c2PkLeOeF+logPKN2emyAoWrzWfY76maER
	 9HwTGkO11m5/2qTlNm6HBC+/mSr21Cf7j7YWMvNEE/VfZvNlUJL46v3rZVKpYZTL9W
	 gVg7yfSPihNn0ze5ApxLtpgRL2Do1X2TN7tewY0FzMPb8xxvV1Xs6ziCUDFqvzuvN9
	 pi8EuIii62VB/n0t1L+Xi7pRSS4M7toGlAF12Zo3sDc9A+4SMLvXUTWQohHghYX1GA
	 jEe/dPzf3E/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4079C64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 06:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167739456572.19259.11452863144559275067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e061a75ac29ee186b1703a40a6dcede527f7121970ea3a3b63a92e63614c46
Date: Sun, 26 Feb 2023 06:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677394565
