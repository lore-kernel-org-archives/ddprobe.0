Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0251117CD
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXV84L3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C508C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704515296;
	bh=8MEQvuo0RBbpTqHh91TAJpexhSBacp0DyrP3FAbNo8Q=;
	h=To:Subject:From:Date:From;
	b=eXV84L3hyhbAz4oyyGwbHsvRNaVpeR56gCwL3/jg19pOKNAZOZLk2Owo+8dZao372
	 mhI1IwaFas5l18uNNM2gRyw2DPHD99qYJ8ElCsFghD0DW4FXxQ5vJ2/XbFtf/VbWEm
	 tH5x0auczv8dPW2ZvzksDu4zWWC33tIUyP0FL8hVpoHRNNrVhhzQA8Uk5a2KJ/DkD7
	 uqHQnGfx2VMDcvG3f7iF1sqarB+e9Ryt6yodUCowyNzaFec7nwQqzT9d+i1FypoDnt
	 YoryE61dwto137/Z12iwnniv0MFd2GFKhTNvqJvqeX/u9CVHEP94fTBG/+ueP+ftE4
	 Hzgoi2hEWZJGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B73C47074
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170451529640.21807.12767424593658820771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76748e2abac9f9cf5e1c2dde92c9a1f984d5346e9d79fba92de1e19a64821e1c
Date: Sat, 06 Jan 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704515296
