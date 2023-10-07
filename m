Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5329F168C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 10:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cllNpPys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C751EC433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 10:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696673228;
	bh=Cfpjee2gIHERCsnc+wyI28MVKcrchLONf/EZ6TIeGjc=;
	h=To:Subject:From:Date:From;
	b=cllNpPysoSTwxlz4QtXdKB7AhxkRJvxiBwA+jdJJngH/BluFAKb+OQhMnSnjFLbvm
	 goPvXwvxyiHRb0560z9FYMpVrO+O1mYnZWvpGOJgsNndvD22jlqPmImX0FcH5xYQx8
	 ZtUuXfzX8SzMKHoUE6zQNCb0xwqoeD7AbBWtEqxaJea8J+A/b5uM5pD1WJppcOQEkC
	 W9aAR9XYVad0fgFmQJa7lt5ggICke+8jQbO2n/LcgQOyXbqF7K9vtSTaTNMt/R7aDB
	 cdsgBJbJRAIyMgOn/chvqJQHcMn3JR4+yJgKFuEqhHV7MhIjTs1pc1iu1bYg3+gjgL
	 LO0nA4TFxsqSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A93E95A61
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 10:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169667322866.4950.16709216129299462904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1001083d4a2ffcdce16e594aac6744f2bed68e5c0d773793133ec79ee4fb173
Date: Sat, 07 Oct 2023 10:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696673228
