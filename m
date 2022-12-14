Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D027B
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C64C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670987487;
	bh=RiYE+dQ4Vnz9+KhoX5vddX4c47gFGrrdVwlYgkiINOw=;
	h=To:Subject:From:Date:From;
	b=azPmDEGv/cc2Pl5y+h+7RCA8SF83JglhSDMBzv0mwm9D+fmA1v7oLoxyjBgfC2UJE
	 eeBfnMlpV58cojAzOhchHEaxtpiWIixWZ9HKeH2L4lTFEi1b8nR6kK71g0Z4RxJ+H5
	 OkdNFsXq+179ENx/eytKtZUaDzyykwNr+nfs/xTKYgwiGRwdDL+EmOpB92hZelKAS0
	 ToRXvaEqGkcUGYjyd2iqyTX8KxCzptYlcvKKvPdqBZ5HHqYUJaCMDOtSJhFQinzsm8
	 gBPhJUUXOtsYNSKB0XXY8yv9k+Yvikx5cExtd7d4q9QiyEadVSgu0dDaHTg1uzskbl
	 rdDWtrzh64i6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E39C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098748740.29022.6964620768140724082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3fda0bb9110313213a062b9d33db6adc0f080d4f9230de23e96590f887d2a92
Date: Wed, 14 Dec 2022 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670987487
