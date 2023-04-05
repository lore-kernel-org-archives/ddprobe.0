Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337F8637
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 05:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9E6C4339B
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 05:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680673625;
	bh=A7DZX1zGdAfmBxZrD8YIzgWzkMKK8x9PKcZSk+78QKU=;
	h=To:Subject:From:Date:From;
	b=kEBU45lIeuY83S+Z5+CpI3vjYnCsf/pagKTErR0TNZP2AHC8lsBa0n5uz9IZ+8Wrg
	 WPpjdC2etwHVpPRfsLXASk6iKqAu9wJNwJS2DRa5b9CQu0Ikg1KYn4KPC0i74PKUW+
	 EZv5ZHLZrFfZIDANLlDZJFDkjtFOBT9Gu3EMSKTLDNwx8brksG7Mz/2whjUnZMbvOB
	 qyJPsQUYmRvdb+FAm3R9cGBt0Ewz0Q3zBlaG1vpXfSZMvLSEQ6w5D89sLz7wgOxHXV
	 FW0Ghgmg0ju9/SZWODenms+ZWspe5ODf1yl2T0tmgk5b8I1WWx+QlD3ZoQQa1XDavy
	 oFsGg+ahRB8QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2B6C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 05:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168067362576.13094.6588591321003309840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a65bee590342652e978c041f3a9c7189166a7bbc878cdef8e28c450f3ac4338
Date: Wed, 05 Apr 2023 05:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680673625
