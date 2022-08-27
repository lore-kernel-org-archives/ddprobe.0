Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30E57C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77699C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661581852;
	bh=x6w9P4jyf+5ZBJEGsKsu0AHLYlFE4J7UKwZnnNQEQfY=;
	h=To:Subject:From:Date:From;
	b=WPdYWEmr1GvzZQXOqXi5NiSOD5K4GL77MqLRtojzz9Q8Xmci0tdbBHH4k7FVk7p9Q
	 mknJ7enyxuXNTkJ1RPp8WaeD2DveofSbcCLjNCe9X9dfPzUIm95kgqssoBcHCyy7fQ
	 WQhxzNy+jysjE8FGpRJQxWKmS8u0iFa8ALCUl/NASzCisSKDZCWEKWJJap1tXEC9Lt
	 5ItQJO1C0xucL6Dw3ui+3iDIAbGwmtanonzQjl72zK/SY1F9yhH5yQh8NPkgHSFzFf
	 oOHNpr/5eQtNIX6QxYtrFycYCq1Zuy80tb2dqrrntd92dVEHHPAhIZRNrubzwFpTRh
	 f10mGJIvp8+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5718CECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158185233.1703.844949278226882256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b75e706d0b83b4b74524e4384b69b9a2f4dbda3119d42084ed9b7802e23c10
Date: Sat, 27 Aug 2022 06:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661581852
