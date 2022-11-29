Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F57AD5E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8C7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669750854;
	bh=/Wu4m8kIR1qXSGpmqmMX0V5zn3A44iL/MUoBNxicrOg=;
	h=To:Subject:From:Date:From;
	b=kq+xI9fCm/xtZHFFJdjTIJYe6wnQ298Nup0GXSjrLu3xbOk94/0zfy/bheGlcJqWE
	 FfUiGJmqGVkkZ68Eh6dP8z5gqepsRXfoLvC0dRumu/B3T77j/tDBW9tymGUcJjzrxW
	 FCLfWNhKY/f7EoA9UrPU2dLN4ahIQHGb9MLrA0o+Fj2buxtH9bEhZb3Mq4yuq/PtZb
	 TOFEFz5nouKL/bPy6SEjXyZYNnCTTnLVT9/OraMrCTjjnTM43w53cQAOmddN8DspIM
	 yalzGpojpICOiGTAM/Km7XrERnX6YtpCtJRw7Qq2+uEZqaRUY5ENqhtq0GdNIvfw0h
	 mNpub9M2dEFww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2D0C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166975085437.12008.4533953724582431429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d014349c4486073aecbc342a8d842d0efa8efe055a0d277793d1c8aff81a3d94
Date: Tue, 29 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669750854
