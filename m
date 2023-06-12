Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831CF1FA5
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 06:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E55A2C4339B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 06:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686551585;
	bh=RjQRl3JmhqGEPObFzE8mRmQErEHt0ZOXIHVP/QQw5II=;
	h=To:Subject:From:Date:From;
	b=M3qZIyhl/VylUJdznIyYBc/2fjSB/lBbWs5nnsO05APQCsicsE2eNEMv/SRBJR2Kb
	 rbD+z8mCxXnHLBMKS//wb+UCxoq6jdUZ4BhBpF1VNHpiooSm00nSuwTGM+YB0TXh3w
	 rYF2Liek5mGcULK7GkDt46NYAO2NiXUvUCe3Fxs75fTicvqWcV5HOT6XamnOwqiz5D
	 nmWE0ouRy+bn7tZkxTdiWwLM9q0OqqlzUENzoMCS65ZRjdAMThboLhHC9kHnpNtpkB
	 PLvEUv3C8WCIJqXy8AZ3jRPtT+tBhXOUeFFJ1AmD5vBvDdsyOSLHHTQGdyrZNjikiB
	 YIyRCvJ7O31gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD79C7EE2F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 06:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168655158581.9536.15040742038169006287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7401bcd89e9bf192992a73027985cf87be875ccea2af4c41a09b34b1a0e01899
Date: Mon, 12 Jun 2023 06:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686551585
