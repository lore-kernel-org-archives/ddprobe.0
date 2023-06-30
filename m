Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F37C16428
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0690C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688158988;
	bh=xR8iafqgzP2Ve/sKS9HpWMRlNVwt2pMa/yTlLT/Xvt0=;
	h=To:Subject:From:Date:From;
	b=ePQV8IpDc8IILQKYYIu9ZwZpXkrN/LNjpOIuWYLt4b/D2lSIVp3TidW7brPhaD7wv
	 z6VzmApb50Gc43361DWMlcvbQSXXAy1yfAj43zQTXfLBDuzElsb2Uhnut3ja8ub1LD
	 wrJ9fWncu3hExImpVKf6yxPceQrGukjCvtGhDUOAqi8RzHXqUin+0qGYh5P9+EEF2q
	 ziY4aM05OpLs1RmDI2O/MDReMRs9tjBHw9dqsAjFOA4EhXuGKaepc8a2BQKbBHY0VB
	 Q4c9gST8rdH3nev8vPjANwuvr0HtdJCWeIEyv2ZJYB8xsBxDNYl5mrWTx6HZsqYpqy
	 gpkFRgucVS22Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C35EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168815898868.10773.9062333866327789918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b651aac2d545f25f713490ce199f28214c9d4affc524390ce26ce04de0d4b25
Date: Fri, 30 Jun 2023 21:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688158988
