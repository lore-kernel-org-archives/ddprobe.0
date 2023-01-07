Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58471C06
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82DD2C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673100087;
	bh=L199F5jZuxGVk9Rs4JcsNls1H1pO/J66V7yiPExrM30=;
	h=To:Subject:From:Date:From;
	b=o4vwoQ656baIIyUNjA7b9YvL+QEZcLS8xldAjDG0cWzPuBY3CR5PKxjgnf3Po0Uvh
	 3FJFeUXUjRWH30PU651hLwrnwxO0+q/0SLO7N7/SIMFYvU9MO8RILpfYh2WevxKKm4
	 b/qbe47vq6BzsVXA5vYrq7oEyXNCqSFo53XqmK2berjavo3/gGcu/fO8rmSZKmbY3r
	 tpRTpnR1wFR3MjSx1JmH8Xdl2s2wr30XuRTrGz6KAGFUnX85G1dpiYAfjJFv8QrspC
	 bfQAcTHP0eIPxy34RudBF4lQsatUS9YTafKIZW/JVx0eIAPR4X3Tp9Z5SFrfi7eJiu
	 SaVvA/oXHIE0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6379BC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310008740.22620.17292730312409355233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb5f0f925ea2aa4cbd42f4cc36d6120e36cb26d99c295b0e8c9afb9f87234ea
Date: Sat, 07 Jan 2023 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673100087
