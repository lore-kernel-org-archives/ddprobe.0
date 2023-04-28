Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555C1883B
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45CEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682723105;
	bh=y2boHVRJ+mSCTf7PAuFqj6LLE6Tgx2KJd16rWeij4jQ=;
	h=To:Subject:From:Date:From;
	b=CUvZpaUCu42UPTpgJBR/OnJF808ZK+3btWqE77ASG6TPA2hYtVoNmCFge1QIORKaL
	 p5M/w7O9+rehj8nS0rnM4WEZIkgwdz3sUFoAjWdilmc5p426dVQuO27FoFjUy3AjEL
	 QiyNgayL2ZjHVBAaBI+x/chF+kjf6XZzPm5TZXvZwM3EIEdZG8sTIjrhSkiVx1kLR/
	 TIuPARt+Y+31sAFwKTvI9UK6bYs3s7GboHhcleNgrdalNitmkd6ghPQJlIGb8/dSR8
	 VmHsdVebljbkQZEwzh2narTsUqVkfE26m2YQ+iRe8NgQuHjnQoPYLRF76ihCdDN2OD
	 j/i98VbZigXsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C9AC77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168272310577.10274.15053918965458470801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ddccedf784792ff7b9730ecb59bb1f922ce163fd1493228fb33e8817aa59221
Date: Fri, 28 Apr 2023 23:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682723105
