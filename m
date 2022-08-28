Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DE4190
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BD7C433D7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661676652;
	bh=Pknnwl50ciYUFAT6BMYDMiqc1f2vmPa2Yg8M0TZ0+1w=;
	h=To:Subject:From:Date:From;
	b=o8REdlgOMA+xw8AJhzVG8RlPiFo4XPBgxTizqbNBMrjiQxhOgP18Eaepsb27Sk+/r
	 s/+dxBNnd7vGh1fzGwM4TnDbCnoVsZYnYnvthBewnOBHyJk+Mo/VRsFVy2/O/G5BCb
	 E7Dhh6PQymdMdskOHWDh6yl8ufd+rv7Tma3lVr+wxNffrPrLJgYBSsPAhr3L8XTBau
	 veVO82nJ/SWCOuUaL265/0GBmAiIa4FEJL1kRwSe579sizcAJRlrtpk+/fklNrcl92
	 LPMxufnTXusXbQPPc6j+yEfVIvT/GrK9aKPDhDsn279BF7SlBj+9230wHcjESbus8e
	 yeRusYzg6y8Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59097ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167665234.5504.12922108353770747751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfa0acf2ffe8577174b34a2fc81aed729e9f0454711668ec776fae3b93533e4
Date: Sun, 28 Aug 2022 08:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661676652
