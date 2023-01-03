Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D4E374
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85A99C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672724487;
	bh=xO7pJrrUHivI8gbdKFg1KpQ4mRxYkkgCn26vTWtx7rA=;
	h=To:Subject:From:Date:From;
	b=Nvs8TSU2q+D1YpYeDI9seWA8vK454DB4espDoxqKQWI7fWPlNmuLIpvLM4ht9fWlo
	 Dbz4RJGJS+BOPNGti7Y1NdzC3fD/tHgw3OThWlFsZgtGRnp/ov6c/tJa39/oTMD9gv
	 RMRC4GdH0w8f/UW4nwLOZ3Ov1Ik8cm/Uf0pHZ/twa+/pha+eiwhnaF+ll6gSqdyUrN
	 YxzQorPadImcSOMQK7gfYPPQVmVu2LGRFcMCNv2RgV1MzCXrHUsRaFwTJCnHmSNomn
	 SJCjqvwfJnZbZTTXNLJ1mo9Neo+gl25jvfT1Egc92ZnYpYkz9Wq/wy4jwXprZv5OZ5
	 iFne68Y1ELG/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E5C1C53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272448744.7510.13739913744480666480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6d579e42b31004bc172417fe8b9f9f41feebded565d791d046f84bbf181525
Date: Tue, 03 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672724487
