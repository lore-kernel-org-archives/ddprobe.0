Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8EC658
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 07:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49E2C433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 07:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684568945;
	bh=oUiK0+2wJIBT2O0IjYPSV0Hebhu7wIhnH6qa/XX4rU4=;
	h=To:Subject:From:Date:From;
	b=qiq8mxyX0CMEXQsiDTxFbQMwuxRZiqdn2edxd4eWtpDmX8bjdpEnfS4s6SxdDimqC
	 9z0AQ5Gt8vSZLcLVGVUk+LrGnAm5tvHDUFC8G8E4YyMaQW34q7lO37DAzPiDzlQ4m8
	 BlYovLDYR+HC01O4HmLs58XV3pe8nHKevC1egy7vywcQU48EBtWRPaAunLBOgkZOC4
	 wax7JDBrRGE33cAtGxNAybKzIlLJS82b/tPjBwGFA1wRo67Wi2+ri+TPbym2l5Zbml
	 YVhJJEi5aNSuG4JRP7Jcleo0HwXYk6dPPHoUbvRojVHK+xGR5LcDwXBnD4DhTxhSg2
	 bhUS39b+1KnZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8663C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 07:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168456894577.11044.1709683094806716384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6fd4bfa9d93e8a3385d4cac2dd02c73dddd5e3bdd3f2701d6fc8df3ef52490
Date: Sat, 20 May 2023 07:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684568945
