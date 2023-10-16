Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D94F27721
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 13:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3ApsFiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB682C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697464628;
	bh=jtS9gbcKv5e7BzrStU/eW6sdtxxmneg41ytEz6ZE+s0=;
	h=To:Subject:From:Date:From;
	b=T3ApsFiJZ0jVDdrkf/KLj91hs0aBln9X3k0k6u5R0C4WyH2N4RRSQIkrZMbLkW6Hg
	 e6IBNg2qqDwK9sJ1koLVx3y2/GEb3G0YEm2tqd3PJT/7N6cNk2VRlsCmR/SlDfbJ06
	 OQY1UHH48v0mAGB25gAdNqa1iBsrmAoXaBTX37lbcGRhN6di5sReWMU/CcDqEgTYc0
	 xtlppwdG62usBKlaqRnsp3etXtyO6XHRa55YKkT6LhcbFsWLRsTUjD4MDUsaG9U6Yd
	 wCO44ubDa9y71hnnWQ8kD5qWS3fgCvXX0EeSi4NI3FeO9PmOTDpcmX+KfqYVjjjHP8
	 6fpMDgaJg0v6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD171CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 13:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169746462876.20759.12691503634148658268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de050dce7fcc902a19e82eba7e78c7b915dda27669038ba688627ff438a31c2c
Date: Mon, 16 Oct 2023 13:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697464628
