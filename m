Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556992F2A
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 15:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0343AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 15:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679758926;
	bh=G7+IU2jBFpH3Qm3wc0E8006go0ylD/AXwsiTG9T2R2E=;
	h=To:Subject:From:Date:From;
	b=a4b1E++nTRj5D/Li69uiL2ztKeshH5sUrLo9pMHFs8uXDEPHeMM6bj4ySCPwFEdBz
	 WLD1oZgRT20NYswA5ClQKh6OtS9CBdMeQfEOAC2gQA9hizxNUV0JD+n8gS3PTCroJW
	 r/pOrHidZVZV/ZE24g1B/khkuou68aYe40Lgj34Bd5qeCEISXr5EFNWtR2fxm4ihPI
	 TJWBNCQVFsdv7O6axpj0fsYcfyEmn1dyG2s/7Cwsg+6tJJtKHH83VwBaCoWKVQyCW2
	 gxS74TTEOA4FUbDzu4r2kmkLmRzSLoZJig6Xr/N3dhuBrVqBZYixSdvtmcG6HjkNYh
	 e7PTIzn+nPasg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD44CC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 15:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167975892583.20260.3775181499285241583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416604a3e5bf4fd602d00ed4ef04ddf1c20acabbddabe54edd6a4d5e7124b7f5
Date: Sat, 25 Mar 2023 15:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679758925
