Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A082596
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 23:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFE5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 23:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679959985;
	bh=aCR9E5ZObIyjyxloIw9J81E/zde12os4kluhKUuZB1s=;
	h=To:Subject:From:Date:From;
	b=YS3WUXvnXvTJn9vUyLL2414dwciikVFJcjS5Rigp4ctANj1xeCL+sgNfbgcy7CaUW
	 6G+bHLIeCIRcAJX6zjf1HyxinIj3c86O3iR2R0j19nuhh5C/W4B7AH92SNCci/R591
	 E6jyTWzUcFO/agbh/WntI0VhdSuWVuJ58Rhgby3QjOS0fB21qIx5zOHayDXCAQwJcL
	 uzsPmpu+uKV8oFJsMO/WkDtaCItCXZpFrEoCO12tJgIN7n+I0cEPqDAZKOocR518Dx
	 W4e6i6ldbvDwRzN630JtAuS0SBaKh7lX0WAUN6V3rEFdwggy4rVTzWXnudAUHSSAsy
	 vq48urHp52lXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEADC6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 23:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167995998577.17042.7153368984306887693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f953c0fa227d515cda0adddc8e9718f61a0f42dacf7e6776a81a0d783711b0df
Date: Mon, 27 Mar 2023 23:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679959985
