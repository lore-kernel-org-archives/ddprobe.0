Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED13810FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D1BAC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673062887;
	bh=zZqoRnfNCSXR/GBe/9ckNUdclJzHYnpnd0HMxV9J1Bs=;
	h=To:Subject:From:Date:From;
	b=j0ZhdQHlXl3VYg4o9Ym8pzE5xRUaiF36XyJJb32LRLpO1t6CHQmsEOUwNGi4MV+vq
	 EQSldJ3Jd9c8Ra6QWbVW7EvewFE1upvG5ABg49qc0aGosoGURt5QfoKVdF6INSiCd9
	 pJ9J+E8VpY+X4q+mR2I7FSo++5qdOnZW7gsIExscG3b9ne7RnWQV0i4mO2ciB06JzA
	 93ybJaWXUV0mPqB3XGyvmTEQxL7L6zB5GrnZV1eLyXhu4uakZg8SdO9hZsImuWvlBw
	 OucImm8OkN9z9X7wTAIUlI9xGGc+xum8gVyFnrk98IKFTvt9az6zcgvS3MjLtypFMm
	 1jMVFJpAB4p6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F487C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306288744.13434.6501780679230166401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca19d3fdf0d1a859d8001d180c0fb01a2d7136a3410ac38c05f198985788401
Date: Sat, 07 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673062887
