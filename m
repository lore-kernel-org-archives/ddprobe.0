Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBB7385
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84F6BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673548287;
	bh=w2oZvSzcxYn9te3xzSo3LcE/kPYkJ8VR7L0Qirf/K8w=;
	h=To:Subject:From:Date:From;
	b=eimbKYB1FTzDVfgRd9I6vMQ6/yfkI92yAKAUZ/hcBgsc9fUCEdXshqaMyMQkOIafH
	 TJ5biOCoeROXoVQrpR44F2fpIMgzQ/+lSfJ5pwqWqVzVS0VlhPpC/BvQJNEo9baWh5
	 LR4XT5/nDtANeKyNdMQQ5skACUA1m18ipWqBCtGPG5dYTUkLTMRoN+aadINCn58VZD
	 cxEyb662a+anhsFjp2qXIpHJtSaDi/SVlDAF2nt70t88otorNDYFarKjr0PmCrrUEJ
	 X8HbvZNTTKrzQEIOBRoOT3HSjEEtSZssPeMKAbtrSCe8/mXkL8Y1FI4tZsEP0kGYAr
	 WDsqvLcU+XyWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62767C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354828739.10226.15704301627220175865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3f5e529774ff27e06c73504d92965d51c858ed7bbf0931c36d097e7f9c3780
Date: Thu, 12 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673548287
