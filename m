Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695A08834
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F7EC433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687328588;
	bh=NQeRv0MHagINSnKu696RCUQlGtmq8uPt/c80y3CJpY8=;
	h=To:Subject:From:Date:From;
	b=uKW6IehqAHRg7rzXaaCfvHWWT/DGf8cZLg2iUtCQLLw/XrQ4YKOniWHuCa189OvN5
	 krLUfHk7F/G6JnJlLIn4g/0OOlYjYORGlkyRN7FBm1fOPv7Fbo6JxVLF4KVc8BG0vb
	 fPYByuWxxXfbgNkNqf1qTfIzBxlyDGsi3GTD76qV/4hp273Tu67Rve8JVdTvDdVNbE
	 N/Tj1pmG5ABAL5m0R3A41F9wt1Yp0857vVsCt5fLqaZrM1njfJXTSp3NDg29w6MXJB
	 lBnBgi7OnUgBkcHOK/c5dBdKAmPmr5WZadpZVcI+sgYQ8iPZ3VoP67XRH5Lt9TfBWv
	 f80XK2qtUvmPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A757EEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168732858867.31316.2468868914059180733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c29b31847664813d3515f7b4e839d6470be1fe0f831d3579a47a9babe068f23
Date: Wed, 21 Jun 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687328588
