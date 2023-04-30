Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612C217D7
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 08:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09E49C433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 08:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682842566;
	bh=4xykUxNF3Y9tqqFkF1LE5FfltaoNgwM+ChlX3pSXWLw=;
	h=To:Subject:From:Date:From;
	b=ZKCnfe5Q6gBKpfqISdEyq8Zpe+dboqCgTo3BaA3sckFEPzx8wzC95FXi+eIXPrV2C
	 lRnGSvkQv37MuCuA0YweZvmbNRzJdDVSgYYF2iKsYmlXNXWJ38aNYA+ZArR1Ad65By
	 D+io4Ld5BMPuTUU4UvqyBBQkMI0ulZP7rgZgk6BVj5PGELaZqp7g+uQXaaYpvcGeUQ
	 L/GftCTwbQ+y5SmsPaJDzOMRRFmFjYz9Fcj6P4Hy1e+yA+6k2+dWaUwK4FSWCUHcU1
	 LR5tlSJObhcrTgSwN0NtDuXMxCL2UQp5lW06nZ9QffNrz5gvsOWtjN1ezbWQJPn9Ri
	 cW/d1dEElLuQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2255C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 08:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168284256589.23752.18040252278656787525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4633565c6a32d5cac06822c8795b062865e793426c19e733afa9017294c7c18
Date: Sun, 30 Apr 2023 08:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682842565
