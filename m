Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14931FA7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E52FC433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664530853;
	bh=n1EWJRax5Z312eYMFEtbrr58FJ0Jn9BcmVG00dsLp/I=;
	h=To:Subject:From:Date:From;
	b=aGNC9nIuUPYheiatXhoFJPgc+DQt/BlAGggPm9DdBQMdVhDdk7uJuwDi4D7tfr3T+
	 mVUTAZmlD0dIwHuf+NcAew1UarNYiMiixDQQeSituqvtzNAps2LMsRI2Kpba28SuOH
	 azYWcOHydRe/MfYsgxVbd9wvZMgA83FAEXUuMvZyBWuZ0/gVf4aYi+N9wKQzNpdaEk
	 1BcnzRuP42nqvz08Cqt6ycARxTsIHjsL1EvxGXv88GTbhF4fFmZMlMYjiNrQoI12MO
	 jXK4lVbomgMJXdLykX+h534EW2+PULR7u9ZeFicPGfbSorBXef9bx34YQ2NX2A4O7b
	 53DL4GJ7TsA0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53982C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166453085333.3242.16317555381589468271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d89bfde48334bd2493ee27d4d2f0af90d93194fbc19d01e69a41b63984d06c
Date: Fri, 30 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664530853
