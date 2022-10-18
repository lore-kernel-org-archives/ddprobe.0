Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF957F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BC2C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666071053;
	bh=9obC7CazcEcQDMNnm6tk1A8+Mafn6NXlfBMij+nXx3s=;
	h=To:Subject:From:Date:From;
	b=h4E7aPRjapkb2Tm1uI+PQRv949bQ4kcYkFdofM5oN1kGCDvalXubgCKOUfVA2WqQV
	 gVdHEnjR3NdJmP5SYvDjBOlXDzJkEXo+Mi8vKn40SlJLMQhq27NcmkYnpNHM+3nZZq
	 uAKgFUT/zY0v/RHCWPQid8b6vN8M8ma1ok1ZPcYogQLsmMrpGGULTlLk1d4P8AHC6b
	 oV5Sz+y+DUoSNoR9GxRv8Sllo1k/rx2Z9iEfMd9lMjKOv3n3AymLPLm6YCuq/wZPgq
	 f4UT6nKiM8wG5pBfSFqOI3wQRskrJ9OhP3WYa+68WQ+sbs1zvn+p3vQtm9zI8+EshI
	 vSksHQs5+VMGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551CDC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607105334.9744.2205819714212180480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b2d3f15b8a594746334f012c45128da6eb14a00662ac24c39289da53802ef4
Date: Tue, 18 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666071053
