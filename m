Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E07AD2D
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 21:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2288C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 21:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681765745;
	bh=Ys7U7v8UEhbxAl36vFzFP+PEcWx1hTxFJCViNj2KHf8=;
	h=To:Subject:From:Date:From;
	b=IJyabwynvjqzrv5ol6hsd8ZADwyT3BZLZYnUV3FHQ3Jp9JOBdZyHTPzMcZtdMFBWZ
	 Ifs95jiOrCDcWU1nHlJhrGXeOGaq+DSGBS4uC/MzRwicJtSBVCgyCLSunZeysLTycZ
	 DejZTmooNicpdSgdXw0nQGI5U1V53UNPltbwlh977cYE0BCtnvgENzPKmZL5m50gnj
	 FffVFwCW6BVAC+u0AZpfBmQ4Cw0sNAK9M4ZYSyPG2qQ8+2YpX8jeZcmMdjmEx/oGPU
	 u7S4xtMPUQElJF6Znsnl5cxyx2PaMkG4Bjvk8ydxDD3x4UvQ0KDOHwitGSfZ387Z0u
	 Gh6N6UGz4rQ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C370EC77B72
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 21:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168176574578.27231.5418767702006120460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825fcc821006cd53ce526ceb73bab4c5ddab6f01712cdf6ccdc92eeb27e5d8c0
Date: Mon, 17 Apr 2023 21:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681765745
