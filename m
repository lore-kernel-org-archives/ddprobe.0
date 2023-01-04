Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D671ABA31
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C66EC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672861887;
	bh=nVF1LQ/G+u+rvX3593oiJGbugyLp6niK2WOVMkJWUUI=;
	h=To:Subject:From:Date:From;
	b=tHfbk7uwbUW/EnHZt+ZNn//dl/tuJSuEaHlDp7O1QDFcacBj3VyLQ4qMyvAbG70MJ
	 wV0FtJbw+HcPXsi637Y/pqdChPgiABSipshOn6d89vXPqeNiapem8ikMgyMOEdhQ7B
	 7+XrTffsnH/Wb/5SF2A8SDULMsjxFNMI4jWC9yXNG9/NX/kYVtBCoTqd7HRaR8yBcq
	 AynAb4Z8f9PklHDYlDTViHpQu/57gd1c+ay01r7Pa3KBq+AAjazp3USTXpRZQjgl1W
	 jLRsWvR8pb7yu2of/v155utKJfNzz/yFAzx3Ks3zmDmgX8jf74vnRKGVtIGU5N293d
	 zfhXJDXvyOhow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70257C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167286188744.15029.7713412028815651165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a662cfe6eb58434f80c68718bfa20ec0e52f0f4570c892a2847c8c2af1da15
Date: Wed, 04 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672861887
