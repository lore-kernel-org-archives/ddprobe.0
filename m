Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45BC23AA
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A5BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668574254;
	bh=Hblvtt/pGNWKEr8R8/eu7qGpPSfpOVoekqWDgtVBMf4=;
	h=To:Subject:From:Date:From;
	b=QfHljpzHgodluFQglXFi8yM811v3+91WLoYkBr6Gm/ZorqnhU/YHBfbUzmLPWAqgt
	 clZ8qIppnwDY+c14roflMSccVl+NOZ/tTMNIaeo8Pn+P5dPojkjxBtLQDWJotlnl/h
	 3/j1Np8tDHAPh96urGS6aIttOIOzDYK5ZjjFJMgvZfa0EgnKK8fycR/Cu5RvLLr8/q
	 2nr8iJY0xJk3KqjG985nFKpg9VB71FomG0OyKOyK+R49ui3dnY3mpDu8HJE2Rm4+af
	 1zv/7nrco6AY1QgKwwAVafbVW3SLnwnjuip3q/0nfFSafXH23N17xeKpZ5BhOxFKx4
	 qsSkSAF1rWwXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C241C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166857425434.16934.6522930732791662443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac34e0ea38152e7e48b2cbe8b6c50ab2cc5c1272057eab29995ffe8f4225b0fd
Date: Wed, 16 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668574254
