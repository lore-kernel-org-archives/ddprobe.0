Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E74F620
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 00:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECEDC433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 00:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674519185;
	bh=fsDZS76RAo2wZNjjdL0jyzDOM+CHqN3aQ9ii+a3DeOI=;
	h=To:Subject:From:Date:From;
	b=bRM8rq4EbdxhqJhU2wOd4l5T2G8tbdpeSB4vvonXX6VkC+7c2AUupBeZ+gMMCCrMU
	 p/d4K2+x/NUvrEZqo4p3KQBSXtNnSPh0oPqN5/Bk4W8zW5PhRB9bIE/GnhiIBavn2Z
	 X6CW4/NnXe5uItEzOVBV4wYc1e0jTv1ige8NvhsLe/et/T1RS3ms4jvS1RtCMI8Z02
	 msPWwEjXLhmpfJlDOnXLnfD1FxtxGrbPQADOGsAdRdi1zUjR4DXC/JmyPEuGK/nDhD
	 LW7TA/aRLVTQCT8MfFEO2DHnZHiZZMBo+5n/zh0YBLKvD972IKIfdBOCjWG2/3dBhH
	 IEpxwL67mHaDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B720CC25B50
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 00:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167451918574.25271.17216141254892129596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d71d94aa80f2f19cc199f5496cd3d069072db3da8d1ecc071b9d1bb4940f760
Date: Tue, 24 Jan 2023 00:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674519185
