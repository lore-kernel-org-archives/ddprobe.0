Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7D83D6B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C6CAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666625453;
	bh=ov/Z/FYqUBiyrYVd4A/JL4+A9xrogRGs1GZTlufodJ0=;
	h=To:Subject:From:Date:From;
	b=c8BYDUyv9R9p7gA6yxOGhUczMaRUVo2uJ4P/hKGNxZTr13ymGrWs0Ebs5P1uPDmI8
	 cOhoZTpKSk3FzCkIZwP2mXZA0vksyi9/nCzNmtPobGEQL0+n6BA3pnky0SC3JaJFXU
	 ptzU7RPU3CuoF0HyuOnKqjehHpuvyRv9PAG9dLfHnQdxm+1+4r4B34FgyoeLK9a/9X
	 /2L+EFmxHMBz6i/aGxaYT5/3J356BuB+wM9cLUbjuwALy/ngG0T9oQg3zev3K/6Kdr
	 p2fupHbgAyGB2mog9LqoslUv4J/dumlAhRszVOHucO07pzWQYb03BhP2d6kiM521Yj
	 E208pB09+1Zfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51351FA373F
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166662545332.22593.17854500446181927367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cedc64a06ec600f5b33ea6fe34eeac4ef45228049a9b25f72ef2d491c40600
Date: Mon, 24 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666625453
