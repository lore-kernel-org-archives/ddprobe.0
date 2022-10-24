Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC031468B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1C7C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666638653;
	bh=mPLq8vBSxBDZnmqJC26V6Q5YSAoLoLnAJvFS15ZBnxk=;
	h=To:Subject:From:Date:From;
	b=lX1+zPtzpz9UgNmoE/bw8W3um8kO95/Rup52+hrIZpZyqSroSHBr2Ikb2jKmz2y0p
	 jT5jyKFcwwrlDUKRDdhRtGxB22CHCFQySm1V4kUBDJ2NXtSXH3aPWhYM8ckKMCbadI
	 Zoy9PVF8fCUAD1a79OEGyss21rAYxs5qTzggPboxS72/Ob30NdM6ez4p3Q3Sbxq9Ro
	 srH9azS15dHInAcWSjEXm3n4cLN7etEBaBPYXNokArZibFj0ynL5gkTyuBUqRLVF4u
	 zZNL5DKDqpAosaxchS8GJKA/407V5WPemm8OmiRCBp9g+dTZ1Izn59UHlfE/t8gRnj
	 PhtYWxCZiqo2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5336FC38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166663865333.18298.10725371368351831633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cfe0a4b2b04934da62aaaf7ade54c14c4afecc33ad8bfa6828a14649afe3e2
Date: Mon, 24 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666638653
