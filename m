Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4EE79E0
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3jvZ+Du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DE54C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703132896;
	bh=I/L252NGcOFMb4f2TFs9dXtIp062tSwXgnzcpgVBQAY=;
	h=To:Subject:From:Date:From;
	b=h3jvZ+Du12hq6CMaZ82WH2beew9Xom2/NdpbhXWjZ2aOkghTOeGOXjXugke01vhKL
	 w9d+7mHQJ4B4KQxVfP6U9pbO89ml6AgHWDab1t8oohv9JO8V00hNwjDa4VEO1Bde9t
	 ADWT8mo2sXXIKwRuskYts9Rk6aryqUzBUyhluE/O7cFL0oxkEV8HLHEQOO/WJJ1t6D
	 53CrIZrwRJG2ZRvBxWKo5wyzNvNnX1/4XTfEmZghJE5ueJbPNTpAH59VFdiegfT7K/
	 dHo/MD0mN8161C7bg9TQTbNttglfbOzUxX6oQiPU2Xs6crDyDFUCFTOUnDHgiMXFuT
	 g7y/vpkS4+4BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FFE0C35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170313289644.16341.7613685800470651964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99f73091c43cd2b60e1af2242ff7481e99f02fb1288d19cbc8b508fcc5f38b2
Date: Thu, 21 Dec 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703132896
