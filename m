Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AE017C5
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKLoB2WB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 853F8C433C8
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698989896;
	bh=C/aj/5SmAKF+7FAP+aYsZHM2d45A7H217WYnmqqwPG8=;
	h=To:Subject:From:Date:From;
	b=PKLoB2WB6dipnAExlSqobkk1TC/iP86uejJP7y9RWjpCLp6CzhvWBnuipx5Yc1w15
	 BQf4SwRXRP86/1k/7sXIufPlkhqbMhmGSnJFCUULkgT0SwOoydRLEqzSSgvJPKB3cz
	 IZ8iH9QxKe98fSQ0Ct8Y3kTbwzmHkaIR2kH+krVfj5IgP7wfM8WSvVm/4RJPoERnJP
	 5kuBYt3+bcoitATn7ffitPR69HcXIrqJcW0ZbltHMOx7jCI8sk13XI5kLdU80cHqCT
	 YJ+EVnX3sQp4+A6ArRSpxLYSyS69T5d4Clpj3S4BHDCj1xGsExY6djqkar8Z4Cbk+u
	 G/MsufcNKTmjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65101C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169898989640.15260.12211342220534433165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae653b6025eae302ac644f1d848ee98779613e845ca52486a85d4dbbde7cba2
Date: Fri, 03 Nov 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698989896
