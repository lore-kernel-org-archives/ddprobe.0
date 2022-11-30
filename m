Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18577C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 743C8C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669775454;
	bh=1F4QqnFNrYzlElDZ2Hdmk2oR+mWwBSy3lJLGNYjaMbE=;
	h=To:Subject:From:Date:From;
	b=tSW1gWHgZ8njA8HDkv73XiENwZjz+JARoGMX9L6Ja3h1Odofh4AOr/5bkHIBIkyXH
	 IbCUCiF8gb9w7Z4PNQVjtQ2vnyvcJEFSViNtDMpgRMC8s+1orybARRAaR0rqusj4yc
	 SAo4KnH5Ntx53xFpfdYnFsymOfA0JRQmf2NuYxOhEh2tPH41MnzHJz8/K+GdHAp+bx
	 EzGcm1VAjHPKlfQEFsRHI7R+vs2qjNI9zwN2EL3HYO514Amp83mqfHkOZMI/Zxoazv
	 sB6hqdbZjy+/evjOL7D5NY7rhnRGbQh02n2YUd+Rq43yrzFslVLXr6ioWbz3of0Kuy
	 xt0btUaBzNnhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5897BC4167B
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977545435.7163.15760120589185191241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cb9af10f196afc7859b6ceddefcae06b80aec5b96faa48443eba7c5d605052
Date: Wed, 30 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669775454
