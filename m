Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE772F27
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C9BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667235054;
	bh=CFx8mjJ6KYHRm8+vEEYBQhI8NTlEeCEPIzUs/k3MJRY=;
	h=To:Subject:From:Date:From;
	b=izAR7qNGDRVSGy30U7sXGR9zd9bjgvy1JmB1CHHCOGOL8Y+7SshDdyMsWiK+sO39C
	 +tT0gO7mgofRJFiT/qephRC6Qf8wOB124FvtQk3g5FwjgzneYop+2BKRB1iSBhiRp4
	 6d6SoAjpJs/WpJv/hPdSVXGiF+rK9vMvVAmKGxyTXa2avLFm/2TWlR7dushOFOSsQv
	 uGDMMy1s5XfkYM/jvEy9vBwYxwkmmCe4l37311uJQ0p3KzWWOl+SYiaTJ5nm757HPm
	 7F3Pd9d8jYo8mAM8cqVLR0UKtRyF6QR14RYkfu515Nmy0MajcOtWzf0j29u0ecFXWw
	 9kH7pZx7gUjxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFD7FA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723505437.23022.15473604579668363298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410b10a99f67042e3567fee4e9e19d7fefbacc197e4f4721a6d26c180cbb3e4a
Date: Mon, 31 Oct 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667235054
