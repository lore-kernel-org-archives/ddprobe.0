Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36201101
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ECCBC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662208853;
	bh=iNFxA1bqyiPDNGmoJM5VfPXvcO6m0dLM6ElT1Wh4vUc=;
	h=To:Subject:From:Date:From;
	b=uWyVsmkOnMoU4dx31OTn8AJfuQ2pndXCPkuCHXHd/ys38br5v7WNwxHJKRT7jDWQH
	 SZXr8zEN2g8jryMZ25gv6n9O00AKOuLGN7s4pAsNEaY/zNu5bY/GalJkktNCUSwiz8
	 LREgoRUf//HamBq+HyeO8tuKEDSpTBqwGaVcQMhWmvz1QEDyfJR58tlryN0XizCRSD
	 Si9c3MP+3eMiKu1AGvntKQ9ISqGn3T7AzgIP5mpreC4p43jJHk/kzcd7TPfUJ00mIZ
	 rHPIrg46Vrk9DFZ3hBG9mCskvyoBPBhMjn5SBM62dLInUBDTnxTlOKs09YyHEWe5/i
	 XJA6ZlmyGBF3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F5DECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166220885333.23088.15423772461981473846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e456493d0a0b7ae43951bb6e8e3ef5c2dd4795b3c0a1195cf6cd23fc573638
Date: Sat, 03 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662208853
