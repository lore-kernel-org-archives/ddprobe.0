Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468A562A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 12:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C157FC433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 12:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690027328;
	bh=U1JwVVYHNR/HPFRefnYecWyw+hwfKrDZTUOCfr4+Tmo=;
	h=To:Subject:From:Date:From;
	b=rrh+BW96znDPgxmYCAo1ocYC7beJBwJQOHt8Se1s6VtU9ZnfJ6A6zGWJBKFIi1TZg
	 sbZ+1Yh8nvBvE6xtoEgIlLyfMXY1rCpOTMLhs7hw70F5Ix4cE+rDREZPHByJnuBwFX
	 b0o1tcPzIYZfFEASL9dCBo1bDfaM6PIrFgon/7jbW2Uo12uMA/Eu+RUGp38WRheOac
	 ChR2rAd/DQUwo12G6FnUl4V2OBVNY0T+024HZ3plnHy/cueX0VnH59Osjj9EUEQN4X
	 ODBEEx3tnZZ7ncUT4BKgrRgHYUksTrRyHrrtPzMHp25TaJBAraD8fh+CHa01tsuLJD
	 O74tFTyAFaJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A810EEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 12:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169002732867.13467.14898757828895489404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842fa6bbc6c66e972d686342f694333f0d6a120c15ca18ff652006967302178d
Date: Sat, 22 Jul 2023 12:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690027328
