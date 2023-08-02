Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1B214A81
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 22:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52A7C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 22:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691013728;
	bh=jRFXbr60t06io5TsRmBR4K6ifeh1sJTTJg2nMTEGbVQ=;
	h=To:Subject:From:Date:From;
	b=FN2IwChFECHmKGflxTpXHXz+wl/ZGLdHAv47POXGXiGoBlMEkomRRCtaUwC7jie9E
	 ZO8i+XHDnEpIkfJWxSHb5AQU9JMTSG9rDx3kpCUUxYvZ882uNCqa0ssHzj8jwE9Pri
	 wjDaF5ITKzDhV2zRtL3Cy9oMbeAyPY7SZEg6haH/MfrZuHIYoWLchRdC5bvgut0qoG
	 GAPBhYMyKBIkzo/5fMUFOT+cyrT9vcaltvlSV5V7AJ8TiOoi8lKk/0h2Qc4ZjHEmHI
	 72avlMEC8FbrOReCIQq+NXR4nj+xnoSPOr1hKB7ONgDfqjHn5MlqIwsIUrCCJz6Ghz
	 UuaJXWbO1T4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F2C001DF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 22:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169101372869.31133.14128938598114998932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3181e00ca30de8aa1a2dbd66d5e5f22c9c13d51c8dfdd6378dc804a6163be399
Date: Wed, 02 Aug 2023 22:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691013728
