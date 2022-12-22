Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC991FB1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82759C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671685287;
	bh=W1iw7B26bjAMFmQvzw/Kwwyg4zm6Zr+UcK61ztDSRjM=;
	h=To:Subject:From:Date:From;
	b=Nu620VXhQVfbggp07rm9K4yTcel9fAJViFWcb/a4I+vrAmmr+BJStXO6ZJ3e54Ffm
	 NjHpsGJrCY4agm7Pd6+2l0vioYRcTfcdATmPiTwKX4VmdI3zn6buaegyt7MOTTUxQD
	 4lQiRfv9/wCSCd7e61SaWHGGncfyPLotZPElSF9zUF44FCMUqb3z9AKkXM0hKCMttK
	 o07eCyeSNaz1Af24YuOIZy/SPIKkA/6GEfO65ARHzUiXhqtz7FTGSTewQ+Wsa7FO2m
	 rvxzagj4pRd8IGwEn62RCTZ/5uQfOY/yCwcdZIkW+lX/vuXN0I3sAmsDlvgH4NvVms
	 TBqXYbIk+MIeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6472EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168528739.21236.4804957678856397837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922d713c8886dfff734946e05925febfa303c3d4033043a7341b25269c650d78
Date: Thu, 22 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671685287
