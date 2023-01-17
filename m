Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3511851
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9F0C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673926887;
	bh=qAhx5i2+f5eMxAIy5mqtJzlX4Tbx+fisLWW67ESCn48=;
	h=To:Subject:From:Date:From;
	b=XhHDG6lDAwMvDSm2xjkgzdwwXK937eHJvu3Z7FEfb24nxcRT76c4NtsNyt+3iRcv1
	 V3C5qEqmUQQM+IHHTW98otrr0hHa94Y+bJXT2q+c0zcy9zkmKqVYN0Nxo2hhdha+jC
	 utQYbBs5eD0VTRPI0PNefWYpdOBMduouK8V2IltHHvvwthB5zoMdtvpAOJgBtdJIH7
	 u7Y+0M/ShcLe/yoATuydIaY2dLPkNp3Zk4OuniSJexn0Dq8DlEt+ULAL+mE1Aemw8G
	 ku5cJKliv1IB0fHwQeXgpgTEqMCEl2a74XSUFEnG/EYE8+3KqbMm/GptnH5izNRVk2
	 N9XKNPHwO7EAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60778C6379F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167392688738.23323.4954612012817761143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 349ede8b389102b8c612f598e6dc8b68ba6d08e9209f15ed6f0e2265f0fb9654
Date: Tue, 17 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673926887
