Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668F36117
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E254CC433C9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686907748;
	bh=fLLqV7fLDTH92wKu/FpZLFbAdFxxsspqlJND+Z22mS0=;
	h=To:Subject:From:Date:From;
	b=CN8ecuSNXa54jQGqxSa5iYG/Iz/pwlz070jFSQYD7/BWyll6bE/MEj+Tkzq3rKFPK
	 9SK1BgNj75BpueUtrbAB95oyaBulcIyddSDPn+CA5sMlhFTtr/jKfnbKgJaHQSBgFA
	 fw8sT+iKNtYSUS0Wp4hKsz8XmdThQQDAAmfmdhfinoNuQjZlqCFUxVoxOv7qzhMT9M
	 Ybq+pLVhOYvvf+b8EZ2mthrILr6SD+0G5i0vbqSYLo3tZpdK6nOQldwmSiiPmU8Wcn
	 v6TTDYMt+pzLRX5paPlallR1WDLa9mYbGIlkwWxpuTsQqrLJaavgH+Vtsztn0nQcmc
	 e3UvrF5R01TTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC422EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168690774875.767.16536725261807937847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bd99010c304671bcbfcc1e1ca46e6e1b69bcbfb14eefe082a7c29dce987f45
Date: Fri, 16 Jun 2023 09:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686907748
