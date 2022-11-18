Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DC117E
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66520C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668730854;
	bh=5NRjbLscYDY1fJQn3VgAVE9dcyiiAC0uGLyaAx/5RVU=;
	h=To:Subject:From:Date:From;
	b=lW4DSpvkUcpJ8FVGEVWB1pCey5k9B+reTJNP24Ldi8/FJVNLLpfS9002QFFIbtHYp
	 dnDsthZZ4LXl8k6CKmPr6eC8/fs4QzlzARGUL0Rh94z4S79gc5CzYvxf6Uq/lUWXiw
	 ElNlo5bk+sD+1zRH3j11Kq5OxE6YrVr0wOxrq0ezw3SA/KloSqM4nIunivvlwVQc2K
	 YfHQ9fnNTeYPHkUrupJ39PfXf8cV+bfaAVOmLErv523E5VDD8ODDU8Jg5PWAL3AV/X
	 9OCbsxTwl7Jpf2LSFL4+eHQMt2K7VpBgU1hB7kw4OkoqtdSWBemir2p4kkQ3/YONbf
	 VXRaVCrjwnbhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A79C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873085432.1647.17387661514746956053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e4684263f0a92e9cbb452e88b181307da1ab6716feda2a3e3d93a4e14ccd0a
Date: Fri, 18 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668730854
