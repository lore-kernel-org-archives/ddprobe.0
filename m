Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211734A2D
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbjuO1/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89261C433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698822496;
	bh=iwMNetH9kX/FVvPierXKYZOmKT/hOXq7CaEiKSIQpF4=;
	h=To:Subject:From:Date:From;
	b=tbjuO1/qJ3+aWl1Z+tl1ChbYbhiVlVUrKK8kg6qMyKQdYlsscdAqGVGFat3h2csM1
	 GwUnflHrhV7M6uAib3jErxQBAuXWqG9lz/XJjVSl7tbU59Fyv5Ep4K6OdAWy5Ab53D
	 ZGplyxIuzWF764gtsoxy83HvypXd0fCRAYNi1cWcXAVNvX63VN1AAt2hn7DRwuMFve
	 +6y2pQA3K7CqAL+peHUUYqGfdv+xo7B+hgTPY6VD/3XH5LDLoJw8EATnY4dBdUBJp3
	 vpI04nKqoMt37SMU51EX2NHj1TBYPNNBGAy6lVYRZ/QQhP50HLuvwSehOUG4XuXcoa
	 ZkewDKp3KlZQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6821BC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169882249641.18305.13300200834429819286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf66813d02def1b131cb3db2be0d2a656c8c4af44a7b233e4f15f1540cbe81c
Date: Wed, 01 Nov 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698822496
