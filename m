Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A0F15EA3
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZHwFXxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C713C433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700481496;
	bh=Laf6fNjY3r8HrSiVzSrUnx0+fQKHXD7JizRAZHsbyRE=;
	h=To:Subject:From:Date:From;
	b=jZHwFXxa44iUXUFTnXiT9CvE4Hg7rL8kDe3+Vu+aO6WFHsdxVY0NKpP7osnkjhAZR
	 m40HeZ0v80RanIQr60x/PiwoxWYjh87sBRvssnumRxOKyUxkA4nqyfJYqC5w+DRxIe
	 Rx/UCSsqa7KfxVBD758z7oHVUCY+YrA8Ku6mSIGvTozc3BdH0Wo2F8ko4saHlImSZt
	 GlMsqbH9vCLqEGx+tYybt+tfrbIG0Ye9Bab/lNBrfYKf4s3udA92R6FShlGZAokcFl
	 XfKMcQILktgTaktxzhU3530v+cOsldYIMvazLJgWu+n/hr9uvvwBEIR05wXBmkdU9P
	 ++6U910P/skQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3F7C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170048149637.1059.4942613556536954085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b26db9a13059c504eaed06ec37185f0082ba8439632ebf5a95c690bc6b4428c
Date: Mon, 20 Nov 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700481496
