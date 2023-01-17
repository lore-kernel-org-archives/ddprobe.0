Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE93BEB21
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85158C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673998287;
	bh=Dffl4X4FHf20Peq1X2hjY9mYSbyUZ3hmfSJzFuslDto=;
	h=To:Subject:From:Date:From;
	b=ZAdkFaSTmtdkMqMgZvD3tsr/OPgu+aDcI4zwdFUUDEHq5MshF5p6Z0Wx3OSszdXFw
	 f3lCtV+8WqQ6/nP7xqAll9RLXZbe0Ayh9oTGXwJumC+JAAJzd9WLEi4yBCI+betIdJ
	 YyFYjtFaL+tUjiToEmhEMyo4s+NFYMk5s7DlmwxcZp2KuQRgWBFxJgvQO8ERhKp3vG
	 H3Ax91ZdJ3heIsvS8I/R8FETpcAtuTwHX7H7inm1NGqU0X3FiWrVEg+PLCxyzSUwNh
	 JzLgOjH3JJ60PvtH8EriE/xGroOgLx1u+nk5ClGuH03LfZkSAg+VmHyClmAVxSNdjW
	 bO/EfFoiBhgPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671FDC00A5A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167399828741.28799.15163016953038510543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba33095d7eaf79d2fe5e1c90b66a5aa6e47946d592a44af843233c21cd4a9a7
Date: Tue, 17 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673998287
