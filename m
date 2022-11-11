Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4F02C9D
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADD1C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668169254;
	bh=9pzHnJK9Dl6ncHbV9lySZqouLt23xD/B4pYIygiB124=;
	h=To:Subject:From:Date:From;
	b=TsMvNdq7FjZu9DjbJ97qb8qvbnV0HM3gAEUtX8zPk9lx2xwMYPwXE1Vm2bf178+d9
	 zAftO1ymytUVOlL8coCE3/r5ddRjBJBtJbZaCC8Jj4ecXnd4m+YVF4RTFUpRI0pdbu
	 HG+swJcUPWFYaTYN05YIxlM58iuIr96ZnAFKbOaSrFlbPkfnKPM90Rg/tRsTUwY0pk
	 Dt/wF807x9lKG8Cn3a6uKsXdpmqTZueEb2sxkJTcMg+3DQzXZifqWPUJjHm/ei3xAF
	 OochY/jTriqMLGe/rGRWabRBfRia6/Gbqo2xaDGO8EuFvNb3/KTWD4jN2FTDdKwg39
	 pE8EwANntewLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F51C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166816925434.30584.14783430985356943507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875e3822a0ea2456d6c74040a4eff7001b1a715f5bb521e94ed0e05f862dc867
Date: Fri, 11 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668169254
