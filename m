Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9712EB29
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65B55C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668747054;
	bh=U8Xe901YVLaVNn1YSmeMGGiPpwB/aBVwbMW5/ZYOk0o=;
	h=To:Subject:From:Date:From;
	b=TPL8zA9CvqEDjDxuLMllIgqp/D9C6bOoPvYKpTkQKb2kBmihBDIh67C9KxKuCXeQ4
	 NaMx6THbPohxs5Sxwgh2SL69N72PiVmKVKPmuCxSMiQ7TL4fcCC69V+VBEqQyQV7xf
	 FP/ZX53sac/FKQB30akwJ9Sd7I0owxRKtDS098mdd8ouZKB14NDytRN5onOhbjuqaC
	 kY+0HcIDsoZTnPVGcpe4hC+8QaTD/aaTRs+0MtYewMMWxyZNbsEN7kJGRfeLZKVz54
	 GrzH/PhqnYCKma7r3pDYzzi8fdRcThXFRbnFGUGdJ2NTwYRi+WKi6tdSU9Dh2qwtBq
	 StalopechAUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5239AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166874705432.32357.17042052893211275907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e56bf8740906124e8c7b8c821c26bf72b5180f935e355dd003bc07caf7ee6c
Date: Fri, 18 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668747054
