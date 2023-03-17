Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4034A377
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 00:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF695C4339B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 00:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679013605;
	bh=bi8jkDw3Mp/6cMfnoHajljBJkX8LG5K3SfOL/YXtZok=;
	h=To:Subject:From:Date:From;
	b=dXA6TAIRHdxKKHfQ2CAJ+iFIkjJPBmD9UDp7I5Q6REc9y8pSFcxA8kN4l5AkXEVhR
	 6ljqwdGSbdx6Qx7zdNjtj76MlkG/vgqd9m3cywv7Ex9npu4ErmWzTBEo5PMgj2rpVr
	 4HxBHZ2zIRBMmSkuTEk364PRjXpQqPKbGTD5X+WvDnE5C7Lu5zGXI2F0f6aU2FkWC7
	 IcVqzYVFN5TodTQWSR5kH7lP4Ytv83vFGk9tMM41Ehvcf9b9nhkZ8/NUEsARvYJ3x/
	 sNvrMcqb5XGmjNb+SsRY8yMHu/+fk4DNUO6h8Sj6+wCxQPruvhkqDT3KDUzMsNEdo1
	 WCl5zcRPEUUcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0476C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 00:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167901360577.22023.16959341725323583004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2f3af76804bf8dcf000adf50db615fe4e33a3b146ffae438a539f2b920ab75
Date: Fri, 17 Mar 2023 00:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679013605
