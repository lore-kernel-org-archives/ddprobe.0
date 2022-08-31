Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB8D33EC
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 672EAC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661982653;
	bh=tREJkVZAd6/OKDCMgRKPdm0ox2q65vMmSOLPBgPK5X4=;
	h=To:Subject:From:Date:From;
	b=Sm/OvMZB4jCNkdAkE1dvaa+WZLKQGMBhy6d+JrDBxgG8sgDjeCF+BRKzDO21bix9L
	 Akod4ktOeADdo2nQ91JDL6UUSs+tP4/BTsna3RvagAdPexkEOCmrspKI+T0AD7KD0u
	 HRms1Ssh7K0KS1rvuL7K6HEyvt3E5/fY6/PtfeTazTJiKDNABv8CjwlQXCqW4nnM8A
	 4FWlvI6Zq5GggFczS/Z3/J3qF5AVqDY2IuK7VessWMg0qCifhnU/3Xt2eOCbUbbPtA
	 Mku5IqSg1+B05cGUcyWfUREJmt94N+LRsba3k9KVecAiOUUE6EqfPmBLDA7klNZyAE
	 4N4PK0ExNRl4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F4F6ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166198265331.6916.7439984969713431580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1374cb03dda60de0e4e441c5f37ea084697139d7c806c8807f14279aaa1a1fff
Date: Wed, 31 Aug 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661982653
