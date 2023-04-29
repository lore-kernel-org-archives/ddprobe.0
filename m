Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E19E1362
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 05:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 034CAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 05:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682745906;
	bh=dINf8zvQ/0uC+S2ITspcSy+fsITwknhMrn/yVtfQc6s=;
	h=To:Subject:From:Date:From;
	b=qOntRSBd6rVtLW0zqkKv++0BIgQ+A3BLSV22aPzf54vrwUPVetXFn1w9IxgLB2FWg
	 Du1Gv4gQynyRHGpNjhug58oHRHnk4qBFSK4O3LxTGNbUbtJJtKiFYWqp/E6F4QhrEO
	 KXp0x3apxs6klRF9Qeac0pgTWW3DmT2+sAuPQQCq9561LTSHH2uoiR6AKsaVHE6xvT
	 ZegTAQJBmItaf6jP0nBogLwbCPJnJj/ECNZ39acMkLQy8YCRGdGlbcHOoyqfK4c4lM
	 f9oPT24l8W/YbwQiCU6Kc2MfcoiR+xWHd7wjecXPNcFG8GWwMvWAtd6bTj9prhMjy7
	 92YCsMwZdjr8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6FC2C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 05:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168274590579.11288.4277134525564943256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f36c9af689c6153d9ec9fbce4fd128f654e349de2c0548a51bbdd9fc176cfb
Date: Sat, 29 Apr 2023 05:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682745905
