Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE82A8BFC
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABA5C433F0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673977887;
	bh=LNfD64sd3IMyi5C4uP+H+H7CkkhzDPAyG9KmgrDbIFA=;
	h=To:Subject:From:Date:From;
	b=BzzcnJCWKvaXbb+CH8v5jHjSnOGR90yPQAhsAWJZO20TkZrXacw8HvGmXLvYUACSo
	 wGQkLMJWX3f2TmidXwJuJAE8LQ4V6H/ByIv8SA50o2I6F3m31duH5sspSNTpWc3ftB
	 uBnP5jQbqfcBqm4ai+vt5eGd0fcSNQnwGHVakF67KWSVklZTAGQ+JbLk1e/uUQM4lp
	 WpwalykRAZqRg5hTWfOtb/X5l9l8aeavtElOERm2PFsRh6X0k7I0/uh1ECDPzvBEkJ
	 gDUa3kwY4GGfD04J/Hi9MKs9Wga2Jia5y+FOsk1OgH4eQt5PuuOQPFYi+a6idPNyn8
	 rE4IpgsZgo+Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E975C677F1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167397788737.25947.17082471340884510187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5dc1eb8766d692779ab11748565af7a21dba004ea59cf5cfc67ffa742cf33e
Date: Tue, 17 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673977887
