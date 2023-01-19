Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABA9A93E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87007C433F0
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674149487;
	bh=QTraKtmHVrtpt4s8LsBvZ+8VHgW9OMQpIE0xFcd8xPw=;
	h=To:Subject:From:Date:From;
	b=EsyRdNjDECUgFqHVa4VgaylCd1yrT2IJ1pCWlSSdlmqyjmejcjGGphcwtcIK+CY3y
	 izv0bjNSqdEop+w5k0kI/onpIQRFuqjTe+GppXhcmgbqHtCOZsNrBHZIuieL3X3NZW
	 +aQAIAPHJ9Au6iSduxeSZgp48MefDX+ipRwlN3uZoKARVqJ1UhOxkaL5iBbwTMi8yx
	 +aWLBCH+b4TqfvGtcc68BFOHhkZToPyv/3aIOmTZBCe0XnwftkhRozFhhQW7xEp2B1
	 /MxtZDy50R9zCaHYh07pMcQRckiCh93vxUWQvXDHMZ08HNzrNRiU6H+upDs6XnC7n2
	 C2donI5rLsB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 658DFC004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167414948740.4020.12841452632847736118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ccc30c1e90d23f640f2818ad5075a521495651ce94447ce231ae444c09fc85
Date: Thu, 19 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674149487
