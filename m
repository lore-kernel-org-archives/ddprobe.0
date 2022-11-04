Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40142F25
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75009C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667586654;
	bh=dNpfxKndijzuVa/n/uaafeRXZpgRKZMUnxdBIZz81lE=;
	h=To:Subject:From:Date:From;
	b=XoZGnlgI6LAQXwQjJL+R/aX567PKPQdNAN6n24ZFxFVpHD5exEEYcdgpypXQJVXBN
	 H1hIqHVmBLRlEp+zDh15SDpNwXSu+pZhIEdJrqJSfoKymvRJWm47GGo35stzxF+W2O
	 BzS28H9sND/WbHsWLTFXFvzVroECPoHh0kawdYfFwP41pCYj+eyGRivwVHNWK8Qknc
	 gzJOsnF7xUL2P1VNH+RWEK0DDcAoUWtcCmKaWzjtKun9/ZCFMnUEXMfYqolpvSVSWh
	 ir3G+sMBQYJjDmqVj5fKFOz8MttFTj2gJZJzyDaAbLAoskztGN4VBf+/cJjw+Ato2o
	 iqP4VusHl9mBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DA1C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166758665435.8775.5814146283740575307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aabf7e8bfddd6f5dfe65ccb98a6c24828e1e435363793d5eee7b8792e015625
Date: Fri, 04 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667586654
