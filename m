Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E76317F7
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 04:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72FCC433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 04:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675745765;
	bh=574VL/vTvVja2mDDHm0X9q83uLnr8i7hR3JrNSLDUbY=;
	h=To:Subject:From:Date:From;
	b=YRdvHPtYXBUxUoXWBaSxRscyVJkVjojh1J0pSwP7I+t7UT36kV60IU/ELQVHbUw+3
	 vs7oFJdtAlL5SS/UPY7gOc1JAFECP5/nAp+CfQ8CzQWe7/64wAqcXO2GvrbSFX7zF2
	 YIa2eVkZYAKB0GtMWl94C32p3kalBGgtTsZDU+tAM+sXnugx9LUl96b7SLeP2t/vQG
	 x1J9oPZV/gv4Tl+bE2KT8pGshon0ss+KFWtyGZU+qlTu1W7G0ljroNAoIiy+A1zMpx
	 Ca/iSzTxY2SBv1q9Ho8mFGPDaM5vVjQN6D7X2kpV8zNzPAqD5jmiNxZqncQnU62vuJ
	 ZLni0B5o2Zhdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC71CC636CD
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 04:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167574576574.13573.11572731039183778922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a775601762290715ddd06a421963c22769d00d19a80e601c1aa7a25bd68ea342
Date: Tue, 07 Feb 2023 04:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675745765
