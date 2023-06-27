Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55418EA1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5835C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687835588;
	bh=3f00+CKsKPZe8X8vyvoBC0Jxkc9G1jXnGd7inUT4yiA=;
	h=To:Subject:From:Date:From;
	b=AELTPYsqGFcVeaXVyAoM+Tp5p0gkTpqNwZ+bnIo+Enod4YtVir52r2/NAU7MwTnko
	 iuMW/iYOzi5gDxycop2SXiybduyoHtV2qUKfKqb+0MBa973TkviSTy746P+umpuhdl
	 EKAQImqfn1166606A5ixgEa3W0Dq5ZklcwKyqM5H50GeVX0lkJMYkqn0+bHXyvheE/
	 lCXvgwQtyH2GmDbe9gABw+Zhth08C86Dz17n2ocGtXKWYHT6gQK2TOd4bPdAJPm9Wk
	 512EFxybLgXOZ+Oyc1sUdAQRqLB8ZLBwzXBrfYoSfN5Ho4lcePIzTx7DQH+d80Su5l
	 ZW4XsanYSnWIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA157EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783558875.13549.5748871189990288631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68032276e6dc02408d4cfd975778bac10c875ba71d3fae5471ffed4bd488fd43
Date: Tue, 27 Jun 2023 03:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687835588
