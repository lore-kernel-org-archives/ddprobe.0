Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5BA2AB42
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F7A8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687293729;
	bh=TxBLFn51YhUTF08fDv4L7TcTVsQJRAkYRO2c2xCfOwI=;
	h=To:Subject:From:Date:From;
	b=R6946JSQ1hzEtQVJQ2MbCnNEtswfvCu0Q8ie+qbkjq7x/CRuCyNdwiHFYOYazrqPu
	 CI6yujILqk+sCePq/nYcCuWwnef2vMFYoqS/yIYsjS/r1W4tfBYxo8UrUF2ReZgBVC
	 ieGNYTlUlrwfCDEcRrS4WfPA61OawAoeyOiN9OTKfE6Hvm0vvnEPH7XhhwnOnMylxw
	 9hFHOd3MdkmxBxIzexu3hFnAAOeN4LnBLeJpkl3uXGvi2kFz96yETYHI1nyuCpo3V6
	 i28zzviqAO2u2XQ5aWXwVyYy54ozzEYckcAk7uZA1ImrRcG/fSE9QNQxG48tseEePw
	 +9jxHoHhnaRCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1F7FEB64D8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168729372891.28289.638696722016760230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32021876f03fb81b03a5f5e30978e74bfb39234d677303803468348e8710275b
Date: Tue, 20 Jun 2023 20:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687293728
