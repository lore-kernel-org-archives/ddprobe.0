Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5097F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65D1EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662938453;
	bh=63iwAUFrvpmnE6Gw5rM+28jmpxRsrDbHZETXXBQs63A=;
	h=To:Subject:From:Date:From;
	b=Wbdmhg1WVK4CBzEf/9f+3ddA8fcoQPqR9sbcFHZhlx5znE5n6oQ6h/9grJlyM2Jtv
	 JSnY5LNnMc0Ciu58x52SEO3Jj+vhMY+j6th/zn8indM39OanBju/1OjvMdyRqxxfAd
	 vk5leHoiTjIpmdgmgRM2hJYZ29GVByU31xH0lERcm+Ulx0dVmAdtvzOB7Rkj42uVbm
	 s+xPUv8/exvM+PeYCcjKgQ9yEIovNik3KrfC/hYb0Ug2oIS3FFNALq4fkx0CF3FJVM
	 Q8H2j9bjQbSa6G06X3SO2SB/KunmK0m0nG6C5MvyqV3OU98CO+Ydn8NMcCFm1N+hj9
	 xiF+GQY1PcYRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506C2ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166293845332.14185.13796794362725931678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4097399e9c8ab38f96c723dd3a55f177abc468fc0014d3fa8e02364c0e0045f
Date: Sun, 11 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662938453
