Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6F718AF0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 14:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1E51C433C9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687356789;
	bh=IVcIIKS9Z+Iz1uCyykAd/nn4bPbujRZIAef4ShSYrmA=;
	h=To:Subject:From:Date:From;
	b=hBtfuUunqdzNuCMNUTt8CY1IIAA9wIA9w7w1vN1IGT3MJb1FnpZmdL4Y8XRzcPGPk
	 y5Cb6/o9fqTKbLRZKMrCsB3eI6W63oF2yrsK13YfU/AK1mX3EliIJx+b4ct+DBkn/I
	 9Ox20jk0BNPYM0AKhqEUBd0eVGLA0yzvbjXx+LYSaTQIPhiFnVwGWpJyWUQEICScxE
	 Zv0nhLG4pFxHBfLp4pmTghAj0+PchycHPx0Py278fJhc13K38bjJhkkimz4Yy65oLm
	 G9TB5pjiD831XxFPUbZRucSJ70m2aDZpoMcRfTGldgRp7cGoaPEuunBMNvN8lJlptv
	 rJNeE3c8SJcTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D23EFEB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168735678884.30642.4035073089358532627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b40e5f2e08936190b9909a4da8838b39612ed6b0d479edf721086f90a97bea2
Date: Wed, 21 Jun 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687356788
