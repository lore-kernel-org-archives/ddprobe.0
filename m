Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64663362
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 07:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA16C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693983848;
	bh=v2wJe632sH5SOKAaKeYZgl2YMMZvgiAa9OeR4iUmSRg=;
	h=To:Subject:From:Date:From;
	b=plckIgXsAGKE4Nj3X6BzsBLA53fQjXgnxVBfem/Uuuv7PKmd5pcgUtHVB7MGqkmH+
	 gccN0xMYloQQi/Ag3NAWpL/vkss2f+7Kq1fCvMyR2BlIloI/IIpPZzwLi8wUHKowg5
	 J+BZXCCDrxM1GnJqQWAry+FSoSpiZHdTGnGAVyjPYUmYfQrzyzPq6FYSwd5JZCUXfE
	 1NMmumy6QTSqD0rhkiGfqOh2iLVQKF67dFpiHRoBJdax41R8BjEFY2yt5Pr3FPiENY
	 FZaTXDKbMjmYOkfoYZYxBqR8Xv8OpqY+hTngRBr6yXz+JoUvovMHT6949Lkf7Zosu2
	 ie+s4bIOjXBGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B422BEB8FAD
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 07:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169398384873.9786.1842714023300732699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b8db2d9f9576f894f5127ada5b947204b8a24920d27e7d6bd22fe23e12887e
Date: Wed, 06 Sep 2023 07:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693983848
