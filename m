Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6093AEA1
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 02:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0149C433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 02:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693361048;
	bh=ybDg56AB0yC1b8oq+NokxnrfZLRrzqpyvRZZ5WVSKl8=;
	h=To:Subject:From:Date:From;
	b=Pwj2tmQVP4/wqzGbSBwNiDKNCRjQLJfFC2OynAruRpH90OROczBMa29yDpSXeI19C
	 l4TgZvobP0jFiaZpnpH+LYW4AbDG8Gs5e65iw2Mjhw0h1Xc2GafH5ZrPeCIlktozUu
	 jsk1w3zVaBKfc3+232uPc5zkSlbIr/5zC90DZRgqbQ6XeVd226Lt7i9G7lnfivi2wt
	 F2h1RODD+3rBvrY1EZ5HWu8/2LUMek+fYp9VWsyC45+fulzSo2IIpdwq6mXPkn4jjg
	 ekwU2WhxaPEMwLE8EAK7A2WOVHGz5vJ8dWj8b+dalGljboo9zNdbOQpM9dqXc6EHWA
	 +aB8w8y0DpZCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B448AC83F12
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 02:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169336104872.983.10439997667531606896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c93cb119ae2b952ab18d7b263962cb76936e213b3818468795bae49d629915
Date: Wed, 30 Aug 2023 02:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693361048
