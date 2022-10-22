Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECF47B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B06EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666475453;
	bh=/7zaq70nlWZxR0PqQxkI3cA6beL2b0bNucfN/hdnxIs=;
	h=To:Subject:From:Date:From;
	b=d3FlXCmMNfrxEq3eFIREu7lmu4RUysVNFWbi+xyWqSDnJpnVXoWb1Xgp7BvhNcrtW
	 ZKrLenyljyPGT5YNRne5yAsPwsXu3kKw2+27whRcny04uI3RnCfW45l+bPCQKcQ5a6
	 2TzanZDWZYi1mqfQkdGijTr1tNrU3LB2g9EdpYoPPXligjNpIfOI6P5MpahMJs/t6u
	 GTANYFnzqa0mCHXR+9Hilkta3g07r3JDzGQHCEECtLDfG2GeNKvzT+jXe9XsWeF+HO
	 xy9LiRm3KhD8d4SNHhJq71ou6Kljb54W9fHja5uWs27kQ74ofMUxz4epI8cKie8E7C
	 Uj8emDf7tzSSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDD6C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166647545331.16107.14320155184330194543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ddf27d352e1fc94a8b3a1b51d5da708c6581e45308a7f493e6c35c97ae45b5
Date: Sat, 22 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666475453
