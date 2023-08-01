Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5402646A0
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 11:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60B4C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 11:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690889528;
	bh=M6fUtQ73T4Y3WD3JxHybUMaPcwkRoM309vRlkz5BO0A=;
	h=To:Subject:From:Date:From;
	b=OxPPr+LNmAdR/AYG/MJw/xnhHOpdlInG+oN8JU7MpsIaEV3mlvmvISBpfF8azTL6g
	 IgqoBjF4rqEe7UeiGxCHD71gRKQPVsdapzxOfASjB5w9VzNdOjEgaegN6t0R832dTt
	 dUwijJwZIUTI6hO8YFOLfyjjhRdzbYb/SkHTtHOb1TF/pCdbe0+6sx9sy3ImI1LeP+
	 fDMeNvdHKQk8J5qG0sNrukUIaqcvROTm7HeG4IT8bBu1oU7crmfaFUlg4ezyy5lseB
	 aes0RS2Q/JmfP2dUJKmDVBNnuNUYFUZKrCVdH6arWaoEy2GnoqJefq/oQTvpAZ8JGL
	 y+XBVoQbtuoXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B6CC0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 11:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169088952867.14268.16897072601256389720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc14f87db9e776c69160eb9db5a94ac888530f3afcbdc8ab8f37f4d8a837c7e
Date: Tue, 01 Aug 2023 11:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690889528
