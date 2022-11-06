Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34EB1FC4
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89E80C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667715054;
	bh=v0TuFDoD9e1IUAILhsAZaKMfff+B5HXikiK66OA7l/4=;
	h=To:Subject:From:Date:From;
	b=hcM/fwsRjZxgOSO7vrBql9845o8mUVyb/DEd8vusoDWp0qfKqBXmg15B8u2Q2CcV7
	 yct1jnzPcHzcboH5RLLYWcfEcdLvROo8GX5xPfIE410+oiqKKva5NKjR4CI7o7+SAr
	 vaZjaK8r0Dvp9N+yLcmnepIIpNFd/YGEds81vlyPK9DQjQ5VmWHo49hovNl0tZoTcR
	 oLSznYr7iA8zqz26xM5adnZ4dVmdcoE+vQT7NH1I0ZjC1nIkCJqyhi0kD+wK+PxU8k
	 SbNTvjf0Bi38cpP2UnPxtxJFhloCPl+/uC5yVbXdgQsEM8MLIzmZCYpMtIbzw5azBc
	 gBGsDnt/sKCRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D47C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166771505437.20376.5140823033655543122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2715f0222b05f274156463233e630f9346363beb76ed86e440c7d801e7069090
Date: Sun, 06 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667715054
