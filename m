Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2BC10792
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B5A1C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672953087;
	bh=/Da9y2q0R0/tKf4h4ZvmndLRSm+IYXXeaD5YiswmzPM=;
	h=To:Subject:From:Date:From;
	b=pyGVSNf4tgiSKD2TRCjemNoXS0C+pBfne2rw24LDu4m/6F5C/zQ0G6z5ZITPHzQoC
	 ZcTRPNHY0SVxW3zSRv64Rr4rzRO6oFZ72K6kmKIcSVFcN7v5L6BeB1dS0lPDA6rzoO
	 JZLnBbrG+vBDcRG6b/j+vFKWNHtvbm7dZSwIzNIuGlfiyHt6eKOpeI0tVtXar+mZVM
	 mod1DA4ogNJtnVzFOY9glqXp5U0OtD3x2PXZiDCKvMHeJg2CvQCRQfEne7wACWDP0W
	 KqhJr46ZEaRz4Hng5Ig01NahJ8pzdOPL+oG1XWebXQriPMPBnU2RyznZAwN7/W5Lw/
	 ekr+Pq/mFAV8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2B5C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167295308742.18931.1690816641713840049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d51fc8d20a4ece42c562408c90f2dd14632cafcee5bc92e05c37c6f2e58057
Date: Thu, 05 Jan 2023 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672953087
