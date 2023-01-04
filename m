Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8651BA2E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84D86C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672874487;
	bh=0h1Nhur9/uPmrJTuK57tWbQ/MJrRXHU2tdZLnBSj150=;
	h=To:Subject:From:Date:From;
	b=R4F2F0zM4W47VA5sj3d7aK7E2iltLvQoTAaLZJ0dkbdFkZvWRVcmaCqZwF1Sd0Oms
	 yQxiQCj4ZX+xsLv3zEyBZtEVJ/z8/2SBm2nvWTNIdBD7CJv7clCRScByXLkUBAenR8
	 cC7+xJhD80QCWA9ubkOIgodefip0B7qMTg8+8F6czQeIr2C+yDLa1SSuYpFWG2SsLW
	 iXU8pgZUuLhLwegIKNBlxSQhWebr3VLyVdblUJEPBlvswtPy4jkL5VlYlI5xpNIFN2
	 G9wlVsOKsrSJhBATL41YeVOF2sKHY4qzFd5K8H12opTxXTvY8dCpI/6htRskNw7d8Q
	 6wVU6XgMR7Pmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C5AC46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287448741.19450.6291006027220331823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e7d50eb39165ef15be53aad3f12c10ea9fdd271b2bb8af5747c3cea6e7a793
Date: Wed, 04 Jan 2023 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672874487
