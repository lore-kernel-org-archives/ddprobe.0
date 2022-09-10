Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CD9EA2
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 775F2C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662804653;
	bh=oOud0Q/5tNaPN1a8ONumQxdc/7LlNez4ukZIKImkokw=;
	h=To:Subject:From:Date:From;
	b=F+8dVfbrABS9iaLyyiToCE8zZxU58y7bIOgS+rnCI72ftxgPaBO2ZVLNwv/3dkCnM
	 VLZNzuWQiuFvhtjR/P8XAUaHm3eI5YMwi5dLkt4VwiMaciiBsDKVwFOm0c+NpOcVm5
	 OP40sL6wj8P3NGTlx1AS7sWkgIBFywX4YwyfXqBwmlubMrJGOzG3I8OLUBHepLL0n8
	 jsogFz0p/8tBJ4Ir5ccm7NwaaxBLZ514ACMc3iJcR+s+2ZY9FrqlJvfIIRM1S+Nv56
	 swElNbPWNmFij+S8/9C25wKLdDD0xgbutc/ovuwZxYAi/l4cGeemc2kCTUxHWm3jSq
	 iASF3IyaMwnBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5835FECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280465333.11465.5212242344192296886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3202233c777e0d9732721978d86178cce4da3448575d71ef299de9ae91ecd70d
Date: Sat, 10 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662804653
