Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3AEEBE
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 02:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E511FC433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 02:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681007465;
	bh=I/0ZrxYxQAQa4LLKia7VYXMWDOrTPyszc4i9GcEV3b0=;
	h=To:Subject:From:Date:From;
	b=MxFux86zfcYymW53Mgc7d4dgrUoKO5oCCjQEbkdrMwt1kRyta6iwswsGijfLiKYa5
	 JGhgSGG1nD3k0b5F0l11ZFAEsgapVo6305l3IfZC+4NuJOo1jOKqq+SvFt7QMfhhzK
	 IEk9P+JLxZBfP1zmVxO5t2GIsh8ZmaIgkXYUUNNuUyo6c71FHmkNTIbN80b2H34WV0
	 uUD+Wt3iUUmilUM3ik2cbauWviJeZBCya4hEhvW40Ac8kI2b1afBcmYtwnFx9+YoEB
	 FdKf90B0EmSFKIErF299TBVyk1BBInOSdf+cezu62p90K5//u7MGbnOU4P6K0GjbVA
	 5DbzxSrXLdQ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80FAC77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 02:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168100746577.29474.6260549585149235569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af23a91517aa122a3f70f3b30e9ed5cddd30ca62609bf9db7b0bae985d412e2
Date: Sun, 09 Apr 2023 02:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681007465
