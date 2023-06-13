Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D4B17C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 01:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0408C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 01:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686619505;
	bh=oQoc1trbOT+J+cmIc22Pd/9eF89smr63GJbrNFaQ9zw=;
	h=To:Subject:From:Date:From;
	b=WS8HRiYg7zJRy4Iar3J+wQkBN/4hWJMe5S30CS5oP8DpzagpZWBiHaFySbuO9ZtEO
	 uvJ4IyIyWO3GugprAjUzDf2/bbkapt0YG5NWK5cCUmPbIYnZ2lhGsGLuRby4atpL6k
	 KqCoiMBSdKCgdrMsal/NjfZPkGYsoiEz0p5Ll230vZciDbG9FDW1mYPZV4t9THo048
	 5si1L36CJQi/ulU8oRC9ybEhRTl2d8o5Vpgf4c0w36P0HdsgogBjSxQ+ydwLxtnE4m
	 PUmabmicd8PkCp02iMxsfGOczXTlYZTnUdzqDG7HJaMdlQbJEfc+eCy9vKm+8xVOfI
	 f6d2i3eO1ZHEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78BAC7EE2E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 01:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168661950574.27395.12310713295770158914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca733891a15a64b22ce45eddbf28071d098915fa9494693b2bcb107cbd31b76
Date: Tue, 13 Jun 2023 01:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686619505
