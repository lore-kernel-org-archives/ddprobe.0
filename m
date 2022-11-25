Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAD48474
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7500CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669410654;
	bh=DxnC7kgpnBgcsZIRV3Q4hdioXLWkgZBMF/LfJc4dkVY=;
	h=To:Subject:From:Date:From;
	b=jv3UqfV4GCdzr8QVeN7JjoJlrJnWqLP5gojeqXFNxgqDuWhMoguJ2MK5QeYMf1hbl
	 98kkXyVCDCOt0DwaIzfSMcZkM6As3MhJtyu/XkKzivTfdbwm4/5BNCVhcWcIkQtHSz
	 +Qqq6rvhSEx3EmKJQyyVMbRBERCO8INxH685xTUnfq7CAAikp9jhke1cI+3LYJqEyB
	 J3iqnt8umB/7EPHe2dTVtiOX1MMUuexaXZNHIpsg6mAydk6P+Z+eJ6XkyLLeLk5iYO
	 xOKwtX7iHxOvLTuxrHYZhhTwklRjOubBTC/yJ9kUARvXrfx5KH6nxvBwaLkE6yroNv
	 tbk5px5fu+Pbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58020C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941065435.19313.17343095637293875649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c395edb7f149d10f20e5164f55a759dde7f02af7e11fb142b6853766ab8038
Date: Fri, 25 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669410654
