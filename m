Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D012F3D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8480DC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672915287;
	bh=oUrmMybFfoDNVCioS0kIT88pJN9okCGvRl2wMhYYaBY=;
	h=To:Subject:From:Date:From;
	b=ALOLnFMYBjfWVyt51lOznZu8rX3iCzGu8oWx99maXowV9fWdvk0vwrAQFOzdRlzvG
	 AgSzwU0EXLtuZ0lIxyan/JnoYlM3ULKVzE0yD0sb79hlvT/lC7bPsOUlmTasleGDRp
	 eysdjgzDSXskEJis4pxZxP12ik78FInXlcYL+K1IzgTlRTfHNVXOO2SuLG92vLArnJ
	 XsVSEVh1ivnP95qTUzzOOmit/ddQCxfWR/0v1wxbYjvRWm5b6ff8/PJpuuL1/fXxwo
	 L03WDccpyqKemaRe9qiL46ee1FbpvTlbBBBhDw/eWpyggJaCZB3bHcCZwYZUOKtU+q
	 3HrsdSBLI/xVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6733CC3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291528741.29417.9220584629047603154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c801211593f8b572da57deaee377570ef0899446d40c33c9ea4e05cf08d1593a
Date: Thu, 05 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672915287
