Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399B220F2
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:38:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C850AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689147488;
	bh=D80vRlqILBVh4bGn0SQFWZV3VOFJaKhICi6nWPG9fXs=;
	h=To:Subject:From:Date:From;
	b=GEh9S3/MdvolASQYY0KiJAixSnu1F9CoZBI8yk3dPq1BUWMQ3p5PHoFqhX+uWDLYC
	 lkSm3NSzChbGxfGgHlf2LaKNXrQeKb2/G4pzskOrPzADses38s5OcrwNrQMm1j43Gx
	 EfuNjq9o6VFnLU3lPfQmZ/LBdteUClRaQDFxaBoYI8vMISNGhrimv+IVJY4JaxHY7V
	 +3aEy5841DyAq1PuVPbZHqQSVkw3mnbdGa3Ojd7yQF1Z35cbAl6DeP2sB/xpYzbNUw
	 ELXz1QWUExErEYAspQ8rMR7tZs++TA5wB+7KOuH82Xr1wtGW9luWD1EPJPPXIwHhEL
	 d4vSlfRB+aIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC70FEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:38:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168914748869.12521.16763539584027932202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4bbf10e81dafa06a06398b4d4dabdaf9474df1927e0fa7a95d05d15bd536527
Date: Wed, 12 Jul 2023 07:38:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689147488
