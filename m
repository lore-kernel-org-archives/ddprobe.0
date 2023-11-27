Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03623815
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRWqdZMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF8FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701049696;
	bh=y98khQc7etCAWSWiwqPEJklkj6glKMCIbfp8zBheuFw=;
	h=To:Subject:From:Date:From;
	b=rRWqdZMyubFaQV0kBUt9zkUqz0y8i7JYa+GXYMYXybHw3ti0NFb+llrhYt7Rminma
	 nr127AuNeYTuI0wFw1ScEfwp/9Fv1tEzCSzicxWj4ZuV1k9lNbc4Yyy8UNMbmk9MIO
	 sMa3myUbhVGDu6MGm8uvPppWDZhOdJrWvRku7TMgaZ/n4TNkydR/au/QLdBWVbQ5Ei
	 k7xlusc09e/HHnvLR8+bo/9GmFUuy2hHHupqpzkx+AxmZK1wE+xccUe+EKDo97xdc1
	 1guxzzzcW27vuuKScRfiAzMg1Skssr0ADB60lfImYtZvP0vo/HnY5xUS6pBMeuZq2k
	 3xdreXRh+8p7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63585C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170104969638.21660.17426747628479175566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41630b7b03efdcd7635528f7aa3b5fbc02314d82bf584c6bd0ecc6d716b3b109
Date: Mon, 27 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701049696
