Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D2717D4
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 07:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F21C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 07:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688888228;
	bh=f4Bu5J/usfFQsqPrIjumXvxWcuEGHJtO+GUDQQ3VYss=;
	h=To:Subject:From:Date:From;
	b=CBoU0U4g5OVMASp/beFpl8F82iha8tCW4r/UHnFJpYweMdah+2BbwQXOOH5JFFeWQ
	 WzprfaSeJYLDD2E2wRd8PegI4CrUVzyVIqVYgbL69c2pnYoqgeH4X3PA6MnnFrMqXX
	 M7kHAAW3vorQxH09KrpLIcO84UMJE36rPAp1Wy0XSVPfbMtE46rRtXk3fU36CpCON/
	 tN0JCShA/jqmb2nvjlF6+eUnD1YAN1/dI8xPbuuAp5HGyAjwsgEG4kwyE8wmrSF2EF
	 rDa3BP3u0EfDhKEUDjxBb9yqAlNYAOM50r90IUErTTySTAFxWASnHopgg8c4Z0SGgm
	 skeqgq+ei4Cgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B971CEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 07:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168888822871.6398.4179479354041749925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2654849d73f4312ec862b898fe91cc1038cc878527e16879f6bec754fc419cfb
Date: Sun, 09 Jul 2023 07:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688888228
