Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331AB1FA1
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 12:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB63FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 12:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674737585;
	bh=dtp1tAqX/DUvX5qyaaqWKkNDImRyxom66aMIj4Px4/g=;
	h=To:Subject:From:Date:From;
	b=q9adYRaEAE/KugDUmXypJMwmP7n5kd6OGrwRc/euA90dPjVoQgIkLkOKyqzGCXHSj
	 Rn7MTWM5vQQ3CHYhRp/gUIAZOalghr/ItVtGw16J5nLBaezoON8QvCsdswdEiRIB26
	 JBE1Xw4O6AcbFDci7SfVOFMiAZCVJ9pMU2mRaX561DGr1Fh1dGBP2JhEEWlulV5wvm
	 BfI8SWC5LtXIiRU5AMtgYE1Z1ZtmzXjyXQxSwst5FqSkb2HMc9kQzCjwEFBKpflvdQ
	 2tnw7rNyNgrnPDRhZ/2gFOh8Fvwu6sWYDt8V9WIs0pvO0zCgKExD4DqZTjaL3sUVvo
	 SsWIzTV21b0wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4715C05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 12:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167473758573.15473.15267575232743640091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1e38b5a273b0aec5dc19cf0dda6d29d3f8ecbf48a7a571577586bf1fa2d7e9
Date: Thu, 26 Jan 2023 12:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674737585
