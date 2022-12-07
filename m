Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC3F138C
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E174C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670407254;
	bh=BaCpc9LLckW7rM9QbKBhYHBwqksprLGBXnaiev5EBB0=;
	h=To:Subject:From:Date:From;
	b=R4LMmF5ahwac1mJ5kFDNGTKdTAMS6otgwkR3JxEhlFJvX6phf2uzHyvkGsUBLgz4/
	 YCilTYSPpHYzxkEn0fkYY3IuKNgs9/+Nb5tELoRdkgUDjYfyk01MTCH2xLCyWj2JIM
	 OuikLHs5xHOqwPV0FYelHhTTCOy2PxxH+7SV9zHFaj3O4DQ/X2ya8o9mHNwiSsFrwK
	 jCrkmgHuT4eVGN0R1pYMZewZierpRSY3YBicDA4UPFgTYT0yXEMX6FTWxnWFbGUrG0
	 vGgp+g8EMdIZd2If/cUgM2fQ7TBUWG/guutFP3Yxf6czQT4CqqTy9HCEZuCP/zpzKY
	 tsEe1Uz37UlHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CE2C4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040725433.18800.1886671809519952106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb89c1d3a899810c62c70d7a9a16e0819ca9911eef1293398497545d66d95d8
Date: Wed, 07 Dec 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670407254
