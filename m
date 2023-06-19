Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1258C10961
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 10:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF738C433C9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 10:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687170668;
	bh=DX1fvS+hB2s9hBmWWqtf7F8c9iaRNPyna6jLVqvtTJo=;
	h=To:Subject:From:Date:From;
	b=fOtHdF3CAFG5bLYm6Qoxtx2FOefOYx2M2hT6Q9wqfOyXxieKJHPZojlW3A4+1I4XY
	 8VdlAPDbM81xitcJOFyP+3LldLvqEM5/fSzAz6YCsnt4zf4MI9kTIVLoJlDcyS1aK1
	 wNdLNyTJNO35Ujr8SHe7bsC3VWVYgxQUn7+DZe0BrkG9+nCzi7YXgMfuKkSKc7FzsO
	 JTN8yKePyKJPsM4DqRX30hR0gdntCg0Rb0ltL9t0N+2rrP++9woQ9S2pKJw2l44X4j
	 dxsMEp1osTVNh6owhWg7tDhHjls/vgqi6wDFTfnQlyRQk6Xf9/5D1QIUEsKfoWGVyO
	 LirzyS6fqR2hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6843EB64DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 10:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168717066866.14438.4292271224672214773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cefd84a3f2e63e2a9f7c790e531e5669b6c3908b533945c5b7c4c5fa61bc9e0e
Date: Mon, 19 Jun 2023 10:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687170668
