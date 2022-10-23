Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB52364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6908DC433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666491053;
	bh=IGDSMotMCj2Op18DS37FbztQMPyvgAZ0/1gavZS9gGw=;
	h=To:Subject:From:Date:From;
	b=PgAYsv11dVp40TC7Cib04DkjPTGqB6xFPUkSEoPwkEUh9fEJFCVNklwiwY4gcBorD
	 Xk0C+XpBqyLpSFfA7TYJxIuyeCYzHGSDmCwYOx/peueZwiAFsMC4a6hg9mFlJQs+Qt
	 jLt2z3k0XpjKKEkYUHOB0gkk/73eG+5JhBTgui4HpAUzAphg5OoMYVrL54ezx0irHf
	 Cjf9/9e39qgS1VBgpHBX7brloOArWUs4mQdU/Z9SdkAgOg/WuJDieygeeC2NHiLbs0
	 stJDQjhR6PRvwSQWAD/wO9gnku7a0USZpzJv5s3UtTBIVW2/N7/QpBx6brUxyZHoB4
	 in6057V+LGKdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F4E7C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166649105331.26545.8109744251083949490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ea741faba570fbff13a3aa7d265f5dc109fc05bf06f64308a3c6a0c8f45067
Date: Sun, 23 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666491053
