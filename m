Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36581116
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AD4C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669893054;
	bh=mghv9fqTAOQH3hVuIRRSNakJQqiuwrcehfWlwPqL534=;
	h=To:Subject:From:Date:From;
	b=fz63zP0xvqLjzjGLl5PUvdAdwV5aj4DeLBqzpIYAkbU2/arO4WhFV/MR18aiYk2im
	 h8VgA6VQWfOPNHtifQRB1axvdE1u143lN7D9pxi13BrNJxYehs46yWY7SlPDOCmkDR
	 Ur4htKnlE5FCM68n1470GsJPbH8FY0TD170tXlViAiPnvHavslnZOVATbePudBrvch
	 H8Re6T7MfiPEyKv3EF0Vdp6bF1Slg7DrTaqMnwd32lQX2xGKCLyGg3DC+6tPyC3yHn
	 LmmH6un6m0z7cdgKWIyAx8RtPlRpTeXjdG42Vt+eAWiyb4gSy1SASW/Pu5elAbuZ8A
	 gtl3VGMZzChWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579ADC47088
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166989305434.7982.14745011346337802761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab26042cca674794089534590f6b5c61bdfd8db1a6a202b1b35963ecf3918d7
Date: Thu, 01 Dec 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669893054
