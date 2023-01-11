Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E803023A6
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DB27C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673439087;
	bh=1ODxELikortxhOG9K/QK8XjN6JjD67o/jgRzdvNI5vY=;
	h=To:Subject:From:Date:From;
	b=rMevL0rLImfv3U8NmkUSs8QJdsngel1/gfIga4pec75MNMw35k2QF73zuLwG51JOY
	 taYePR7BsydKpAq2G3BYt6lenFMcDMiFIM65vKFO5vt6AcZgh5833PD+QaFggi/jun
	 Pb7o0Tw9h69PPhoOOI8n4gXoQds63jXkrNlHP0E3UuAaW65LUJPD4zZLJe69fylJVm
	 o8MDh48zrFhFj+a73vmPLjRqmbP+nz/cA5ynOoLU4Vqqs5OUzerLRcUCUwRjzAL8oW
	 jT0coMuWxyLeFiysC6ZNS2Zx751DDn2tuG0rgoVk4bfPIT1KjnvcKuG48BhCBPQxFT
	 6UIHB02g/SgRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 720ACC46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167343908745.8554.4722045109877788147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802eed7e37c0dc881e375d4ae282a125d26376a72622387bfa2e4830ec20e3b1
Date: Wed, 11 Jan 2023 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673439087
