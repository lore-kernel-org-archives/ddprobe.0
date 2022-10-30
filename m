Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA48B194
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B77DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667092254;
	bh=HumkVlcpHAy/bII3HSh+rH0kSA8/mVsU0IsZx2Xs6Xc=;
	h=To:Subject:From:Date:From;
	b=R21ftH+bN+zcm3YeFdRFE01BGhc0S/yZFsmB9NokLH4ybUlKXG+YQhbhT8bekAv8P
	 Uz7BO5Xghyo8FUVsO0fVKNSN+OQuFKdF26fyIgvQPvZT3fcCMtLU3ouf3gjUlzQA77
	 /MDP0fFHXJ1Jb+03taMrJbmi3/socNqMyJOyo5kliwM0z0u6BJtqdJs2ga/slwos+Y
	 cYRdtjG3TWfmcBOr0wiuSCQukYWqAcBCA0h9FQGkiaOz98CYQxeJZo+WTYwcu7n0kF
	 9TnNOY602yQXelCbBnYq+GfiAbvDi6iheZNIPuSRBgCaBkf6p6fcEUS1kGZeoq9NRM
	 hTzz5FVpdU3RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F42BC433FE
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166709225434.32174.7368322255996548794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63fa03f9badd856669054a510a676ce7324937473210734d2f338c05dae215bd
Date: Sun, 30 Oct 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667092254
