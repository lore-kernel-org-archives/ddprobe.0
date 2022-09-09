Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52FA622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB7FC433D7
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662701453;
	bh=LU/bBc67tuKM2o+qTt1N5ieudjSXiZeAtD1Hj/NHjZI=;
	h=To:Subject:From:Date:From;
	b=SRxqK4sErA6dxk6b3BwCZjI9LThixkbzRMKhkS6NFunnmlzsMQorPVUP2zkAokRls
	 IbxvCvwgi/QvEhGO4pWlbbjYebeg3KcF4XNqw2dc3UWJJo4IglNU1vWeFxFtpPM0cT
	 rgEBrkB1RxpOxOiXfj8blROu4XYlHKGYn749d4mgNTGqsOgWzfwWLU2bADEafd/I9V
	 fFoLGN7Tn+qE5ATYj8gZeK4IuvtUsTo4Y3+ljHbSVvXjsjKJArerl8TCQh8Fi5xYM0
	 6/zxTu2GUWILVrGha3H7/T29SKPjdn8kDlUJ+LLPChTLvLsLb9om9+ziwHpOh/ab9e
	 ktN5HvJtv0jHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AEBECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270145332.11091.822603645493525633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e78461e358dadce6051be71ff945985c1cc6b304c7e270afb561874083cda4
Date: Fri, 09 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662701453
