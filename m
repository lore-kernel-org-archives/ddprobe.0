Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890F17C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 02:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D3BC433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 02:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686104525;
	bh=1EjuSlaVl38irAKnXLBlYIuInQE0Cb/twCNDAfC7QRU=;
	h=To:Subject:From:Date:From;
	b=d1cZf0VUZGqOHfWVPKRhgnk+G7rmPM2dvzeNsOHsMEi97oH1+loFGqQAGV2ZUiOm5
	 5r006BbIW5RBUtYC/EudRf3brcoqa4Psor4Cvb7Ga9/I2R/R8mUn7BuoUeaFjWqoIm
	 NXgqjHT5Y+nbtPySSMTMwhdb8vorn7QSRlXNoUpeAW1X6uM5epo0+n8fPWiB1yjKpI
	 1e0I4mPqCtzcdh+mANMPW2HfGU7teKqrSSTNkbrEVrqCKAABF8BoZ7MLlZvGBwq8Vh
	 GF08EyCUag/9Dw8KenjPn5XW0Zsu5C8a1R0bsSd8XYkY7SFhPJ2Zs/lTSGEZGiAZjK
	 CKGJ4gcb6VqaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1687C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 02:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168610452577.3030.3193826362682044905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914ebd15130d5c81c4d18cad6286fa5ba63dab121aeab3d3e0b352179b1851ef
Date: Wed, 07 Jun 2023 02:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686104525
