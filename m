Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D8B17E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796E1C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661672452;
	bh=sPjZGWLCsrBic3Ew5XurOj+ta3KDBLKjh7BshWolwBE=;
	h=To:Subject:From:Date:From;
	b=hmdIzcH4upL+NysEhZ8D/Nj/lm+L37NjdevM4uvirzqyj9nNvLSfzV0LdLyyQ7G5y
	 wAj3pBxdGijNmqGFG5ypsGpuNHZB2eeo6lS+k/s0wn724hK1MII7qkAAveSQb2yls/
	 pnAq2GneJNZk33fHLpuDiHlgpbD0XTQ5aIXNq1Yko3yzzEorXE55HCydDEEh47mlJ2
	 fQJQ+er6W2CFTqxNzZyV7BsEMQOGv5J24otXul2f+hwcAZKzEb0Rqc0Et4PTMC91ty
	 gqyzLw60IvOOpgEK/OC0WzAX450ispi+Or5TB+D4c0UFCc522S2fsoA15cqeb3hZO0
	 5rY0yNeev92Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D18CC0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167245236.4290.15267311645250307575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc6ac830b35c33fcaa10994c6dfdf276fc7cff36d270a1b6129336ff4d79091
Date: Sun, 28 Aug 2022 07:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661672452
