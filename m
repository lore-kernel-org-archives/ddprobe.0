Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A128E23C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BE2C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673880087;
	bh=WuMAzp92bwlLMofE398Fw9sReO8HeqELtiv24yvKXH0=;
	h=To:Subject:From:Date:From;
	b=mobtnztvBRSiy/hltKapMcFCUS1+Xb1E7iIUMHW9xNyuVSF6NUm5TNoETnMYRErzD
	 dkYy+rwLcHdD8xdTTNQgd2WmtGo1UBRMmtl0Z6lBm4z39rum1qMHpJjujvDYcYNSjb
	 w62Ka7wGQ6dNxSZD+Kn99uZg5yCZjJ5MIOIfCBqxkJCengg0xnmveO7c/oBy/5k4qi
	 ihgHr7iAbF5btNPULLQReEUw7omnNMc1iQBWWZKe+u0Odredfv6msbILst3DkiPsUC
	 szdnPGb4uQaQdaQAHRkcZoWmuvsP27U5ZTwQ7Rfempg3JOnT/3luzIpOtafk7H5aXr
	 5MqSNxuQnSS2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E668C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167388008737.7619.1207598336402828327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed42e14c35ed32258e0cef30c8d6af60e007519a8a2e1d26fc42f9d937d5425
Date: Mon, 16 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673880087
