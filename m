Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87394A2D
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 02:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 069ABC433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 02:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693363449;
	bh=WmYgAzrMMiZVcTR4THRzYuOeK+XfhIZCytbWB5zUVNM=;
	h=To:Subject:From:Date:From;
	b=Hl1HwuTQkuWkMuL44+Z9baHfP5FxNg5GfqnkeWDWo3ecKhjBvaknbCftBvSKYSqzs
	 qgJpU/kOv5ToJ5jw7FsAh94eOFNn3eNDBYFRY1rRNn0lya9DWXb8L9NQtlQRRGEV2z
	 1RkJg+ZJW/RNbJpvgjEpRRGEBEzSD5WpF1lYayyvQBiS0x0WCRk82AHnPlRenjKyl2
	 0e2paF2+Ar6xdfgOlArRV7+rHMJaeH+4bvEfU4RdY8Twki+pdnCxKAS70z9apn4eNx
	 0TqQaNNjuNjy2cr9uiZm6yY9vQyMrkCDyXqmVhsbk4eFLLqvio42o3mqbS2THLUALi
	 nDgZJ/TB5CzAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C985FC6FA8F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 02:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169336344881.10460.7335431733883163909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c50e482d76f16f4c0f40b7e3a392a0c3008af87731d2e908b15a28f7ac4cdb
Date: Wed, 30 Aug 2023 02:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693363448
