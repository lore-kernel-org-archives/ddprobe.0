Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBEDB3C2D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 942EAC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673222487;
	bh=vJCdECLYGMCh7OBemItVArtknFGcPUm374fSr66ulMs=;
	h=To:Subject:From:Date:From;
	b=kfy5dcxt2JpWJILFrWWbsWKvf9dOYBccZJLd1O4fTe7Bhq53x3oit/jJcstwsc8y1
	 vmxCWy5ipcO3TOgLCU45j7gqoBiQZlv+xkNjSnfN8pC0Sdhzjuo/Wnq1Kcm/dDWqly
	 n/iTHQqgMNhwoD92e1tRK1cFC8AYEXI4klDWPk0GZTZ9h7HkOzsISNh4d6ajg95gZw
	 iYKvE/N+BakYSf/e9SWrR/DLsMahrkTITROpnVafDarvHHhwRi0k5Ya4tPeHMrANL7
	 0HF2BjyugGK0NHD9HwOy7Dsgv4Qh84JEJaK+qWi+JOuO+GwzOQHBfFam12XWcorYEx
	 0EfK5BddnBkuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76B2AC54EBC
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167322248744.5122.11634161421879538847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06008b9b479d23647d58627ebca157bd42e28babe119081014f4fae648b2d3e6
Date: Mon, 09 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673222487
