Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC7A2560
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 10:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2A67C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 10:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675853406;
	bh=L1bWVKG2Y2RbzUO6tES1E+RItA0OT+rqV2d7BDn/BXg=;
	h=To:Subject:From:Date:From;
	b=JVAHTYg+QLMmeeHOYEL+mvcM+iW8i7IeaHGFb6tSzhkdORln6o29KdHKeDgUm2Qiz
	 IdmdHZm3dnPAF7bJbURxzDCAW2LBxaBCwhCYTsHCh5XWd0jJOJFhR/afq7N2ChOFEB
	 UkFENU8mPNcUfbL2s30qmNxo56jvup66GCFMMZmMaQJ+HL8+M6vjye1tKCZqgclrvs
	 E2NMB9yOGjUVofeqRp2/hlOcOzLq3Xeb7MhuaYDGGpvqDH9bvhDskj0PrrM6uYmQap
	 6UukRJVIQM0LLZct7mCARtCvxEiPsOKsC2k2n8ailZRKVq/saxZN87CeRoQayTShz+
	 nSbvb08mibRuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2557C636CC
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 10:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167585340585.7630.9890978531404395543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d87173417de4beeaf29022811ecb48219c4a5c53d81893135d710a5efcc324
Date: Wed, 08 Feb 2023 10:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675853405
