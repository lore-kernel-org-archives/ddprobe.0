Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6206468B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BADFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666638053;
	bh=PhaKreb9xzOzRDvc1nd0COjg9/JLRtYWFN9orYUYJ5Q=;
	h=To:Subject:From:Date:From;
	b=bUan0iVKmXGMy5c111Jpey1W6Ay4hPDGcnFIEJBARI4TVowSO/+NSvR5aPg8qCaBf
	 atsD0tWl6t/ue8erUbS2BTpB0ZWiYB0Yk0D5Y2kPxhlCPecaU0FIQucqea9EJudMxc
	 4BgIeMjvjWltT2FbjApwXE/etC/gSr2+Cp0Yi9f2pNtLE0ipirmlEr6leVOl/T7ZY0
	 7MzsH1pC3XJG5AxwGyjGZsi72f5RNtSGkzRTNBIFHu3+sujoUmIai1Hl/THd7M++YH
	 76UblLr9rytzznrXyce26BVgKF1iW0GO0/k3g74hKZ9HKhjSPOlMTqzdFWDbcc5aPV
	 QW/iHwl7U8Eog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54403ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166663805333.16277.15551793297278212688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078d9609bfa5f106fd8d6ffc3d08936e21cc5ebf60a12a218b30ba68c5ca5a8e
Date: Mon, 24 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666638053
