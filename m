Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4AA2342E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 12:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45B8C4339C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 12:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685623565;
	bh=pxO4xesLiCzmS5KuA/XmSAvgEZBAHe/3ChZmhSC2kHE=;
	h=To:Subject:From:Date:From;
	b=p8jM62uTaavybhP27GHDrmHr9YC79gtBY/BSI7JHjUwFM+yQz1MAl+yxeDwDTXaxg
	 fq4Btdf6kpiQM4XspPTXBx/mcOU+Xp+DD3Iag2YYowmT2zchk34WhAZJHnihS8rbn7
	 nynKgHmNui4YRy4ftGpLc0HFQQEjl3DRJuORC6aMrCal45VDkWm1SbLUN6OgpHPMLi
	 ob4ctHs2q67KFFAdUkmdsMA9CZji1oJHaKn97BOFRrf/iXL1PQezzg6N2bRkMvqVjU
	 j47ZTm6MdghURYSPUX209f7a9h8sxqEq38HSebD0fTJgNKhqHKAMLgrPBh+sAeO9tE
	 q2MTy7fMz/KpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96CBC7EE29
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 12:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168562356574.12687.11173712166556257420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed49afafd4918fbb1cea3cb77e770d0b3ca299b6c2022a065052936f9813dac7
Date: Thu, 01 Jun 2023 12:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685623565
