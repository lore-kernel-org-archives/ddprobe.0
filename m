Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CCAA31
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE09C433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667463654;
	bh=CqRjr+PjskP3xVME/IntYFtSuVrWqFqnGia5YojKdlU=;
	h=To:Subject:From:Date:From;
	b=MvpHB0TSsLGfO2I6fUr5exWCokjQsiVJJml15h8gwaDZsPV2phqJjIzr30vuECj4t
	 HjY1ZfqLeONDSfGg+IQl07sCbNVf/8GQ+mqQMKF+LqVaoWBUwHlBu0NikqX98uVlf1
	 UGzdvmXqePSWZ6jEO0rC7QoVGN4gzeZB/ErO4AC9/Akrmg9glAfYKdAnZ6HRblW0fU
	 hrcVAQ/6dtyQrssxJdsIE6Bzqm/UjE4VydfRF4cA1Z4YZ7kAZExHGxTWEr4neIOZDO
	 6JGnX/zx/tC61InLrt91ArHq4b+2wo+8GGiqmwYacIaM77bqdLAG/CD379ssxTYnTn
	 sdE9kMZ7qxueQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C95DC4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166746365436.17577.6467124595073915579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696e3e2132fb7492d14f14805581ab4bcfde1f45403f78b1dadf34c501b45d3a
Date: Thu, 03 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667463654
