Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EFF4C91
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D784C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663279253;
	bh=zaVjiRlRFUwWSjm2HlCdeulaHHuieUlPTu1n9KZtBU4=;
	h=To:Subject:From:Date:From;
	b=aWZZr6DZA1+9V5YlHLaORPKvaKtj6Jvaa9c9LmMTKR1opzup0gqljPpsZy76zMEtk
	 0WN4ZxoADI7Ds/ZvIbwU9vxNuNzBgeiuiqabFc5u0bvVutnMs8NSLztY24J6Q8ZEBx
	 psXTyxKI+MclSCKcCMNaeTAXKcIzbDI93X6GoqovLHs+xg3A1HIOzPYLLfrh8azKYk
	 VnXtanRMsjFuzTF4Oku8UZbvFTeStkKm0OzT6yYSPtEpreOQ9YmRVyEU+BBHIU2nj5
	 dLUaxDhOUng5R2cLX4RiX1VN5ocmxQP4nNsHrhl+Bsr3AX3rKmkHwnjA54l3P31GP3
	 9CjDAfmi4+Hbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8B9ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327925335.6089.346497803508952328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5c551fb07330a71397b6a0333a9dd33ca42919eff060076be045ac5fb16219
Date: Thu, 15 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663279253
