Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3527111C
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DF8C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666010453;
	bh=P7WwjrqBQ1P3ZDK77AlGXmOQOkTxckXeDzSCzTOxhd4=;
	h=To:Subject:From:Date:From;
	b=I1b1GyStd6Gz+DSJbwJ6J2azu25VXvwur3hulawQemzyZqM0+lT8xkdSQhfrG7UeH
	 +ovV1LHdtcb3TW8MsTsV/imifJM/rnjZnSzH3/mql3FiRvK5RO85Yg551Jq60fbk+j
	 dwv8aQWznmIt1Pj6sqDuKHkkt2tE4eSkSCWRpOx2Djj8KceU0DPYFuzKYtzAIHx8Hf
	 VfxUMvNlf0qxjB4xla4AIbP6x/WH3YIhmfsytF2Z4XRlaJzLW+lNCK+HtOSUsU4n9c
	 psqCKtl37V4JzJKfOyMpoWu6ECXaGKuPnHxK7XGJcHpjW3Pgm+wml8nGVV3Lv3rf+D
	 3ybLifsJlcDNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51416C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166601045332.14851.7676524843094920901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0944a0f34988095f7aa0c843bfb0654aec68ba90fa405f21d394184bcd7bc097
Date: Mon, 17 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666010453
