Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F022031A
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVhDxjJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2719C433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697755096;
	bh=CBYRnEuM9nID/r3mGvAzJwA+0uGmYg+GypeSC+MWl+M=;
	h=To:Subject:From:Date:From;
	b=SVhDxjJR/OKgC1p2Ynz31VeG5HfXFLkmLY+nodrdBg5gKtYrst8o5/k5929i0wODU
	 wuKVfGfpuEvv9furF4gJuNt0tnAogURCAOnCexhMXScooquK8Y9zsNLaoxEljTrAWU
	 sa94asaoo7u82s6x7NDcTySj4a/2bNPhZ78WzO26Razg+hcWWm36f1R4RVdqE1cUZm
	 4dZE2zxKUKQN7tfGqwHpwulYAUDvIQbXbqapqblOzy9osMiUcfV7LdNLkpilEnsLWH
	 4+93XLHIATZFEEcJV5Mcv5YiF4lVJMZNolC2liAlA0gEjOpyx59Uw+LTIVV1MnDUq9
	 tvA2CO5EBZe+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84900C001DF
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169775509652.7555.16827015652272277158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d0345bab59aeae1114fb052e58b7c650f89ee3ee886f866e569eb2712ea941
Date: Thu, 19 Oct 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697755096
