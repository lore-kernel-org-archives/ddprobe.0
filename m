Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B3D6FBA
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 20:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA201C433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 20:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685651765;
	bh=gVyghjLhWpcdQJc7PoEX20Eyea43mY80RfV8OW+u/5A=;
	h=To:Subject:From:Date:From;
	b=Gb6w3cBbwuofPJdGi/aEH3xLqfaUEAosU7eJOzGjdA3jiy7CuDr4L7xuYWB+j4oDF
	 2KUgvrt8Q3pi+232/vuBXXooSwLQakHlIMAX+CEn9iCU1ABMnZIBBgIA0wiqNJVeHI
	 oMFsKjIXr8KJ0TF8WEoGeb5X3EyXBCvsEV5Vudo9AhGY8Y3MH3ar1pM8SxLSvZHYuB
	 4kmGP/aCcWpeMkgP8mlBuZ1URCs90tIDccLjD8D1FAXRsoCfD4reyBeSphZAkd6QLp
	 3TjrVJw0o1+/5N8Khs3zRvthZpoXv2VUfVap6mLZDD4Adwo/wK6pBBnnbN5tfJUEtY
	 vNhKqsXkz8aLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA71C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 20:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168565176576.15395.17234380177607408993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1145b36088e0ca3f785d23531d083c247f773848d32ce72fbb306743f85d92
Date: Thu, 01 Jun 2023 20:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685651765
