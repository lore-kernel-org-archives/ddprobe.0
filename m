Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C2115AE
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 01:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC79C433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 01:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681090265;
	bh=AWkxMGpEJBI/2fkI5+JLKCYVDLkqB1TXPgFz/Zm+J+Y=;
	h=To:Subject:From:Date:From;
	b=lcL65+7IbPI9e/vVSdzvr0EOL69sOzKnqbPCMbdR8ll5gWCbCVQDTNqy7viNUh1PI
	 aByTpZXMdZJ7xtcaVlNwvvAa7Os7+WP627eRl/v+8AMr8AcASmJNWBlHjGSaNB18P5
	 wg1Ejmq+XbtcldE29ABr3wUh7mLXLnRb9c2xcqOHG4aFaQgxqfuIymNEOmgnS6JGKL
	 DDRHVCkhbcjMCb5yzSXXwk7It7aS3MqNyvfUDmrkFrCUUQTYWAHCKF3JChwUCJMRqS
	 IzaRIWKVbPZrAw76J6sFi8ipsyxqurEIJzWIdRD5WQNCUJa5XvQA7nGoftPJb6f4tV
	 /Bk/hu/aq4Zfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0721C77B6E
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 01:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168109026575.6646.12572687894318227619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd868bf64ae39bcdd2b33398442dfeb15ac915714b7fc57785baec9ac260052
Date: Mon, 10 Apr 2023 01:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681090265
