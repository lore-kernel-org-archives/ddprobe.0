Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD457B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7102DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666849854;
	bh=ndhFLidediM+PfJZp4NokZiCYNTb3vEw7azjS1wTAjw=;
	h=To:Subject:From:Date:From;
	b=mFJ58ckE8h88qJjt9Y12WPrUNKX3YES+7lUgtYOUSK8+9IpbuqbrgsJBnnky6Xem1
	 Qn3iGALB87DoktP6oxWZkJbuiO+DRX+2owETMyayZ6x3d2OEtpmUEtsXMXdLBpMFnm
	 KKWKMeydfppYeyeAe3FV12np1FeFiPESv9NkzCgxCDvtoF0OsghVqTungcru58ABlG
	 153Z+0KFE2fXkx8t9lIDDE/iuCXvaoqfUQz6hqV0fpqHuhPnYSEJGAwl7g1kmZN5K9
	 yGRPQNhKfHC7GP8Li6bxHrpUZ5bJnPpB0i8oEuSxarsV+n2gE/YuLt3NcUVmnA94n/
	 ULbSsWdTctqTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559C5C67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166684985434.2429.6620136498627031286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6752b96ae36901b3dc1a6570ce24519be9916aedc42503bd8fcd8604910929b
Date: Thu, 27 Oct 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666849854
