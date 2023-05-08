Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278B7193
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 12:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D193CC433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 12:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683549485;
	bh=pgrXCsTKAdxx3i8+ZqdU1cKvXANCMTot7RPXM2n5JnA=;
	h=To:Subject:From:Date:From;
	b=f2CnK03IQtLpZuuOiYSPUonPW2dZJbqRfyq03gxqEc5rhZAJcL+VnuPG8AQFAcwNM
	 YhMbp35RkhEiS8k4ovP6lO/W47W6Y7hOdDSNyXGqD4kxu0LX+0JnOw5Jm/R1NfXoPb
	 qYiBCCwOjaMN0HnldSYtK0aRtTEekAZ/cvgfFB0j5HAdworb+O2MVNjsyTm6d0bN2G
	 dBLE4P1inRtMp544PmA6HnBskuIYriUpxMVssA98f09leCxVmlCYhEooEbr59EEflw
	 xQ3+2tO8ZEoLFvhW31Rrm13IyYUyawNPqMrtVLR0xUPhjlT/OGU0bcvOKri5s7huF4
	 uk8iE+TwHW3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DE8C77B75
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 12:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168354948572.4908.5104986998815252441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064256c99e2437500e75d31e234919b047335232921eaeabb1ddb165a09b6613
Date: Mon, 08 May 2023 12:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683549485
