Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151287F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C237C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670980287;
	bh=zOLtagRiCmV395l/kRvluiwh3PWCWb/w9DIIuoMNhcU=;
	h=To:Subject:From:Date:From;
	b=hspWSolRhfIPxJc2s03yM0bBy0CEps3383X8Jv1sjZ0gp+XcRLgPHQ4cGYBEbpfD/
	 Ky5OuCSYvOFWRQX/bBzyud+1F+Tt4lhB1LDOWxvx6+pt43ircYKwplpPgMCFYaaqCU
	 Sr31pHqX2zVAzvDS8CFvsyzXBsn2hBd2pZUxu5f7ef3YVyWois4Lp07wOifFCh1476
	 x+NSSvLM+rRIgOAp69LoC3HXm497QTJVDoy1ynSwybdqJ2qrMk3H45rmwXKQfDI1rD
	 oUNJlRjmxBYBT9FFW54D+5Yjoy6lbcrKQ4ToHA+YThbDXn7vmwsLbCOCQjfyA2N1bR
	 /11QW6O8I554Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619AEC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098028739.7433.17591337554705998100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c70eb22c3cb248d5ee6ae5a2706e9e17463fa90714ebd9f3ad89c59d292395
Date: Wed, 14 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670980287
