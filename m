Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86CC1867
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E673C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663066253;
	bh=y7HqtGnveFi94zn3LvrD2e1xK9B/IMyP3JhpPfOx42M=;
	h=To:Subject:From:Date:From;
	b=K1mgdh6EKEmrZphbACbyySHZrNlctvmVq6fG0UHzI4ywbLeGarg0mQwsI+X4/FPdI
	 AJYbn+ExPC4vLkzEkie5J8IkNnqowCKVw2T1FLJHZ5dn2ksj4DwU37krxl0Lf5OKG2
	 AuE3ztQ/MbDd/IgVeW0MMZz1z1RZi2Whj0DAsfVQq8OUq3cv2uReANhPyXnlCz2GZp
	 hPhp0nBVf2MoRvKiDV6db9u6mkALpwuWZ8FCxuXKOWUWdEZlbhXABDpxAzXbJLCl+T
	 VhBVA4JsplxWRbeWQV3Huw+HT1KkoW5qAnwrl/1KpfyqniB27CtZWfLBp4XMDjNbzo
	 fzylIWXJkL1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5408FC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166306625332.10806.13293630289024468028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd34dc401d26e487ed0cc933bef6c8a05b7cb15fe20b09f8348ce69ccb53d48b
Date: Tue, 13 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663066253
