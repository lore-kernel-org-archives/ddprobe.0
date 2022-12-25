Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF4D362
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D2AC433F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671957687;
	bh=2YMh6qqEURcoBVWrnVHytpkjmJ+tbSED6/Ege2OvbNs=;
	h=To:Subject:From:Date:From;
	b=ui3RdghBJHM0rfTZ3W91CB4zwqXpH30CHnBdx0QueI68juF27qaR+INUKPz9PD/I8
	 ebVOYKf0Tbzd1jlYOJ3ddutBvF3AlHiQ+I7hwh6jKHB4o4iMkumcq6EoQ+H7LZLtmZ
	 T9IrOkU1AZeDMO2ThILyzMRwc2ZbwQfvrpNFqSe72y6pf71R/gAfDrVOqEcWC0z2KP
	 enVV4UaTXy3oCmCoWLrqrg4Q0ACwYBCy9B/+I0MLv2i1i93p6NHvN1ibkI1RK11Q7Z
	 nnUNuR+EyzuVunCk8JALgEiO1iZ0NEZjU2Cioa1MGcAkWPtFVHZCqbjl1l0ACSvdsB
	 e01iEfOc84PbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6659BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195768739.18296.10353724038600209971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d5a66029ccdc73aa91fe25e238d3a0db4586b653f864855b2b74c36cbd7b01
Date: Sun, 25 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671957687
