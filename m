Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5715E30FA0
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4PW/gnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD322C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696620428;
	bh=+hV6RVeaMd8f5xZwfwmNBFRYre471wzwG9BTeuZJAsg=;
	h=To:Subject:From:Date:From;
	b=f4PW/gnc55ndCoJhQVy9AOVf7d4d/XC6W1xGzsUnEXne1MNuGWVQECc1WEvSrQN01
	 8qIFMbfQsVtIrob4fsRnxObmDdvDy4bYepafjXPpSgMN5n5tarah57X/A5KZ+ZPtx3
	 dRdVDIWAPcfrZCcbJdWWFz2OGRLtAIggSIe7dg/Rfxh7HFXeMH3i/dVaE5DpkgIDDn
	 Y2CMknHykBs5qq2uIGjnwHPespuBahMj4AVmYlsSQvRvx+2yBx1SDl2o94f0ipqRX6
	 fxibanteY5cZRTKbURP44RcHkThyGo1VCC947FjLJl+goPS6oyLt6o8NecFsHECuE+
	 8RgWtRRcOwsoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC322E94107
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169662042869.11481.17786419305579356521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3ed636357fef516207951642182c694daae855077482ca3046b11aac9d0198
Date: Fri, 06 Oct 2023 19:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696620428
