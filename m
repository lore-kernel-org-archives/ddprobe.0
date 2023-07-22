Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686F8EACE
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 09:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3BBC433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 09:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690018928;
	bh=/f8iH+P3ObSsRccHkZ2PWf/zKn6LPtJ+h+nEAlzo/tQ=;
	h=To:Subject:From:Date:From;
	b=fWgL6ALjPQx9wdj9axP6D+iskhZPVIvy2Ywjs9Y8jYf7tw7k42H3QK8olp/28XyIT
	 XLN48/CKIhw5MhCeogQwyBccybDttGdFh4KcZhmh4SqgdU9qrSTymsPk0Hfx+lFewk
	 CTGOD59kU7xBNrcHvmuG/KvOBK9tPeyjpbUxIje3yLHkqejR8ceiSER0xzD2jjH90R
	 VI8FjOPzL0syk6Vt+FVFJ7ZYmvKa+G+i6BBaL+q/100z8pQdA/rVfnHaHqIitlsJET
	 qnSozpnYuZWwQY5r5n7lMzcRT4hdEeioyv5j8IV1xjWdT6jaDHHoku+cxSULH4LQRx
	 MfJcDe7Ge1+JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B033CEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 09:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169001892871.17975.5653363022421694619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9afa6328631e96b1dac18f9aa9e25b65b61ffaf64eace5e763f30fae9b2aedc
Date: Sat, 22 Jul 2023 09:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690018928
