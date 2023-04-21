Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C7E17EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 07:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FADC433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 07:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682060885;
	bh=RBynC9tZpdukMi4xJXXqKHkBjTF5AvWcxzzcNTyP7/I=;
	h=To:Subject:From:Date:From;
	b=lWDE6p753dmsMTp970KGKy8PKCFGZbHQpo3W7W+3sxzeU7SP6KwZY25KYuDVR/pas
	 g9adoOR1AjqQx6lBcDoyT0CtDFYpzeYvQ3BRIjNqNmEeqAtuMnDHioQl/ovSUjA7wW
	 USik5cpDnX0fuHIkSqLHRLCUh2G2meReoudVKWt4txJ+9/Os5/wzBxtw/TNkPWDHgg
	 s7HGPkIAx7poMT1P3grwY7c70tHVe0WsRAc1B0tOFLfI2XyLCnT+GMDcWXGc+1Ega2
	 qtBY6CJbn8D2EbynVwj0ncP6RQAlgRxqW9l2ImIe7mcXeUHaW+XsLpDg3Lr/0Mw9x0
	 cww3o7/do+lsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC08EC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 07:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168206088575.14062.3350298886259491358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42216df18c00554472fb947a06e926b6e4b31e2332a3d85931e9b4f06dac3016
Date: Fri, 21 Apr 2023 07:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682060885
