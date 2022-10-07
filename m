Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B48805
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91FDDC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665115853;
	bh=YYE9+1c5UmVQQEqQ81L/3Ze42kJAffWQxuRd24WiDpg=;
	h=To:Subject:From:Date:From;
	b=cyWHIbfq/KY+pw5kUpV+wcYjjEgmUcb/jOCWRd2LnVNHzcUpw6pTeRd/4BsRJG6Gm
	 VCfCNIy5qsZQMh1Iir7TIxmcWBbQskIdGDKvdjBbBMsTKiLEwTqMr4PZGHyHrpvtHU
	 hFJ6amHKFshhahwVKFdNEGlGSnXXtWZ7asIY6wCB/O+K+bZViH4hFsuXH9ELiaH+79
	 RcSaVDetQ/6dlFa4L7On4O6g09iwZWmWtgJgPsommCnYXSPWRS0ZyyK9rxm+TU1AuI
	 ARjvjhyRZFymyOFjiB/KD0VUJ0JheeVgUEJqz+KyeypIIwBR5dPCxslbd8ZiGOo1WS
	 dC92PfzyBk7jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BD69C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166511585342.6168.12608310907582998815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcafb9c55ef7d02c11d2e3e9d11c1101600a358bbf4de893795ffafdc5919532
Date: Fri, 07 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665115853
