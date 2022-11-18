Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13A629A1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A25C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668771654;
	bh=yI7ak6FUCgeqpRc1HP3eLsQTq/EuJEXGyY9lrJT5550=;
	h=To:Subject:From:Date:From;
	b=SnaCgmtuRx8Tn7wmwFF5fMwHAM96G1UUPTf5D3EY9wQaupWpsufWMoI96shq4szEG
	 HJ+nlDWwKuyBB4bAXwSd081o0uUgF+vR/sMUo1kb5Krfig2ofZIV/R5AHKEGAw8UlJ
	 Iwm/r9UX+97mZLwx8YjCUdrJ4cLHiyBD7qIWPgeXdU28yb0pg5zsKPHdTvD2EE8p2l
	 JpJJDdF9kAskmhtXCCfnFsjT0aTAruC/P0XjxSSXYY1T6LuFH6fy3YNDi2C7jPp1OY
	 MyE0anGIHB3B/LFBlV2LQm/yTtW+JxqW34HpKDwEH5174fDEqeLwdf0dXPbJT/nCGb
	 JG3Ckve7g19Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B5DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877165434.7296.4939743175689847845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50c06009676f0fa7bd039d3f617c9d97a19ee0564a3b9ed340d6ec6afe862a1
Date: Fri, 18 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668771654
