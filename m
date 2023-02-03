Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6441863
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DF1C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 09:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675416965;
	bh=lqlWF73cUlRhwEBHL3T0Vm594kDNo8aFoXTPRJbNJT0=;
	h=To:Subject:From:Date:From;
	b=UXtHafsWy5G4SBSb4BFZHMvOi0RQypCWWYLnbUl/mfQROmNDmJ3MDcDfbdeTy1YHq
	 rK6HD4euOSM3gwITKXDkDCDHTLRZYF9bFIYQsfk6slrZM0D++loB3+DXasQEuCzWfM
	 lDeldiEGnCzD0IwpEPDwC73Q1VBo3sPxaMrkcO/A+wcmPZ5BGE6fFvZKw69L3aDZFA
	 bMcfHkE9v7HaufxZoJPmhRSnE8z6VwAgu+bBnOw2obKv36bgICIsRfWSWInNr0gpQf
	 6y/6MFK5Baq/03nZo5U1FglLkQJ1CpKeElt+zKavoZYNZNqTcSXeQoZ4ZW5XAUCMAm
	 WkA8MpKMMN8yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD507C636CC
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 09:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167541696576.13632.319773908942593042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6420dd4db0101654a8d9919bbc08a7f29644106c85e6305a083c75dea03001
Date: Fri, 03 Feb 2023 09:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675416965
