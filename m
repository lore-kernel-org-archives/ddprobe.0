Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6F0EDE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A00FC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665240053;
	bh=CyHdHEHv24MP9lMmrA0vT6UkALfRBrFWRTeYVTWNj3c=;
	h=To:Subject:From:Date:From;
	b=aoUcRvVmDL+ZRolvmk7LB2ncbUOHufGxKJZW8yNPSM6EujHbKEbOXaC4OuWiUAVOz
	 4bgMSSsu8CxBUCNIeu+tYneMqRFJimjad32k3QY0b3p00xF9cqSXpYoDgtvF/OXr9J
	 0V0vfLbCG96DvggXJ0o24b/qepid0ro9j5hAd92/7Qil//4qreEa68c/r0Zczd5vWM
	 0ObEAkdyrySJUNnz/IEp/JYYUP3vZBBmP/xXv4vtHs2C8KXYulWQljN4qij1qcHdEN
	 w4xX0pRd+c5mjmfQYSHnU7qDVF3V5DNpqqfsXjqJZMQZDi5ooISmDa2hwfbk8I1CR5
	 StLPy6+LluaSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51769C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166524005331.1079.12833260320079459927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c4a1fe693cab641abc15c0064265ca13356b0a92afa120ea488f8ba88e0ffc9
Date: Sat, 08 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665240053
