Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E59417EC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD21EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688097788;
	bh=h+FEtzOZ3XJ+ZRPKk35IguIjlCcpfwRmgGOdIqx58xs=;
	h=To:Subject:From:Date:From;
	b=YEXw1SWYSubo8FtuRfV5FJCd8oxvW3SCgFY+RQ6u13DwsvW09/vrEGqgUdCD4d//8
	 oZ+KrELSCB5P4za84xocosOWbOc9eZi7k+Ym2eV11//5WL476lCVzubhSSIxm7diV+
	 sU3q6zm/7mRf8tq/yMK9dwTvugBe6cFreCqY0DTh9IgVZNuX8/sW8We4lM7EAnapQr
	 b1+/DWcWv7uqBMPsCuqU9dulemnb+7k/9mEbSxs4VPFISbTmbV5bxeIxo3YHF1kOaF
	 8BioH4TMQbG/M8k9HgA8NtEqpndwR5DHS8v8yiqa19V7JR5LuouTjOslPTMTrvdHVz
	 X2/1vwdj2mSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3BFEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168809778867.8198.2088555239359354544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5064dac8e7cfa9ec32693558e2bdea224a1a2a7ea9b3fe3dbb4bf800921f8e3
Date: Fri, 30 Jun 2023 04:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688097788
