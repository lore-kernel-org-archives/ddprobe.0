Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0CD1428A
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 21:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75B9C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 21:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693170848;
	bh=JGmkVdREtYrHRmK+YqRfHlYx5+WdL+nLVRNn3ujOKGk=;
	h=To:Subject:From:Date:From;
	b=Q6qOUszQmAecMslKgcFDaf5K0JC8capaRfFjlvSNN6n4wADDIF+la75v03JPREK2J
	 Pq7iB+zyFr3BvWxVk/kiL0E20WVNXHP/CUGod42LG33SRe+RsT1aHfNWTn8evCJq9y
	 J5vKbArcX6P6Vm7wcZR5L8QtvsSHrw6tkD3+8aCTuZAOufxeRv2RPfuq6ZJYxAuLY1
	 +niGvo31oiQVw7zo2Mm2myw6Dr4yWR7/owQCHlobdx4xiynQ4k2mQsD6qOZTHC42lm
	 KYoM42TfqM7RzSkFnuSbLcw0XezLNRUZgyGKjZ/CxBah4h3gpcR0uAtk/GKfIA/z0F
	 /Pnb54/xWUzFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D3C83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 21:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169317084868.6867.8764627926196984904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494c5b2e1ca4a0c51c3db26adc8f9fa4011ed7fd4b8bc8c9b0f222c9fd97bac5
Date: Sun, 27 Aug 2023 21:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693170848
