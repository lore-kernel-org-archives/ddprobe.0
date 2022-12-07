Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2E71367
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B49DC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670401254;
	bh=hSKRs7+iabUIty+D1AgIRs92cYOWhuVahvS3FvgvxN0=;
	h=To:Subject:From:Date:From;
	b=H1nhlIGfJ1NHomTCdaa9bavFYklu0s/Qg//NMJCpYXqMk0gxO9ieBrNQOT2zQDpWE
	 +sUaxoALGbr4XDZz/evFeXLYL9oUn8t1BkhuZI+JwWGzOL0jvUJGshDoHba/g13iTf
	 I6IsrHsr2A/7biM+KOjsdkl8dVuA3ZwgKSoe/9oygznyfM6i7hc2+0V4FSprUf8NG1
	 95XYyrKwp42HVkvVQbU4i+PRcQZ2fOUeyt6r5TbenA+0AAvsWciqUaoXa0AGfaKPPM
	 SNH3dgT0zdgQzn4xDchmHW8J26BiC50Xaldoa73KECgRvHOHs9dMr7a6eRq+UrgmH6
	 7/OYdx8Z14MMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D91EC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040125436.5305.18427354053790243572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab095220b356a838a364fde0ae2910488323faac665bb5366d6c05ddb20f15a
Date: Wed, 07 Dec 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670401254
