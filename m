Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647F511196
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF591C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688750828;
	bh=FC80QmQgmBub+AA+R6kgBESgOzscArvpiIlCJewdKUo=;
	h=To:Subject:From:Date:From;
	b=k50oraXZpr67TKkgqCC8xgZLPVO4aeDYs7bqHqcltLtRPf6XGs2+54NwzgqTU2nem
	 4pFr1iDWPSowp/XGsv/Sb2RWa7CajEYkc3PhfYIqWUlCEOitO3sNusc+dspfFK4fpR
	 omI7A2dmP2p/rz6S86JnBN8SM9AP5BuBM8aVsBiGZa/SkaXVPQT4snUi50hoM914yc
	 3IiujdV2YV4idU+vpBrOSvKiH0yaL+yHML1lD+yCBJdDlXJOCOpNIXAPGHk+Ldik5Z
	 goFI83QDu99Hl4ZcYaiOuMJEoh2XIzsAl2eJ0PMDfhqZny2z6Q9ab48WJYuZ5UHrPU
	 vi0MFYtRA+mVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6416EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875082873.28609.15074998020337122380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6b52c2495aab0110e7ad060738131c0f9ed6fe61d667c283f3cff31f7b2242
Date: Fri, 07 Jul 2023 17:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688750828
