Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14507C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C151C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663704653;
	bh=cDPRCbFWN3BE9z908evTZLfeyTgjBqYj1ZbWo8v4h0A=;
	h=To:Subject:From:Date:From;
	b=swzlXQ4S0WkxUCFpKNvkxlLz8ET0OFgd7UqARp3LJv7ArqzwfKoXvCyQhJT5SU2DV
	 0LCS2ZSPCyHxKtGUt3a7D/PkViuUROS52E4OSL7VmB89WBLh34rN5Qmik+w8zAewLA
	 2nq7/vCCTkZRnGO79xW3xvOntJHHApmqoj9oiYs8UR66QqsVvmaH7ac0Mz2BVJ8dPb
	 Z3EmmtMF8kMY8G1dwOVTXj/mrlcqmdAsjvbQwC7mDt3+MHtUV3Y9oHk0ipREBRca5i
	 Cov6VOb1BAkkRM93dVMMItQl5Myk1llAzOK532jPbRyvLzaxBsaYg3QlSMoovv6eMT
	 P2U0Xp9XPbj6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFC7C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166370465331.30530.16157214965261894712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa4bd18f938818cab1b83ffef0910e9c85ac2dee72c350574ea7a040fc60bcc
Date: Tue, 20 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663704653
