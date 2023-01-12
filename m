Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D721A392
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84FFBC433F1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673497287;
	bh=VzLuu6QU4Jg8LnanlxMxSVMY4AHzDxxs73qYU7K1tjU=;
	h=To:Subject:From:Date:From;
	b=DyGSQpQ1R4iLbOtTc1JaxPPpJJERXaFU5TP7VCsiQU1k9rOk4gKg2XvjUXrtuG7FK
	 LfUkw+dbx++Oonx/vjVtzY2Ope1Gb2wqmzPvpa+gh7j2EfRosx6Nr7Q5GpDiVU02wm
	 jWiesPmUfkjcoI/acn4BstUXVXm+cgIl9gNB6EdRHgKZuXM1dP2pdEPMzCYiKckj/c
	 bafBzjUQJro1VP7JxhyPEF2P4cskHaLTYRNh9QHHp/WgXbvvG1OoV5Y7BGFtTUuebT
	 0ggewI44nfTW1dH8ncKIsZcP42nNkqXMCHfMZksTEFwBIEDt+TX+ZXo78g3lL1wAwd
	 Bwx8lWx2zyyWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A118C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349728742.11423.9360286890421114775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60e017b47dd822f9bf12d260e058b5171991f38cd05f60e9c105f6f2fb3a227
Date: Thu, 12 Jan 2023 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673497287
