Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9927185D
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88BACC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671587487;
	bh=J7LkIP/o9+kujxSWMdMAPU1JSRe9BxnAD/stMPk4WF4=;
	h=To:Subject:From:Date:From;
	b=MRRD5JrB0HKjgaVfBoTj+5S8/Z9+Gx35TulbL9p/ASNKoovyUyG9V6HEGECXlSjKh
	 ym88j5PwtiHfv4nH37NdxGf+nikSacLz9XbVM2M9WF9Dqnl7XzLbyv3IAl+Wuocdy+
	 7ozFaB3kIkKL/5za0h1yeKihfmxbvW7U/cyO0IJY4uUXT4Mg3Q0PY0LcknuIdF5RDi
	 4OVUeuBD2wE/4WgSx0ZLrIG28mHQsGtYMvlFMnLt36g482pxZjh1q1ogLK/dU7bGKa
	 m5JfHVbvmPCGlptJj9q4VnwuGMrHTsuUorHNwY6ZN7teDek3n3XXhvyFH5eChYxvVV
	 BO3pV53q4OUXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2AAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158748741.23216.11841308240460059813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630653f1d472423464450b03dd7658eeaa68ed24949f2a105b437173be4ce8f9
Date: Wed, 21 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671587487
