Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5363913FFD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A19C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690558328;
	bh=IbyFHU+5PS6H3wg0iku4U1bxt0iUpHU6il8BbiNJnB4=;
	h=To:Subject:From:Date:From;
	b=rxdy4UbZIPIN4w+dfa4RZ9SZlqdXmq2PlA09I14rezLkeKGhw1n6GTwVJ2LULcvse
	 +al6A6z3RTIHTHAQG5IGMKT2YLpEdu/qi1zUmAA00974zJ8ZaaIRsrMg4aNGUztCo5
	 8BHzDca5/xAILMIbc+MBVNF+xOP+UgGnAAd4WjPeCBl70fZVN95GtHr/5bw08qPvKw
	 qj3gpVLdw9wzIsNKq8VQtbPLR3+Q4YCDmo1S0afVNZdJom5vFxsX0SuC827OyS4G8c
	 /9aX25vnuyQKMsscU+22WpxYsIWG6d1VDjhaLL6eIWSPYDaW6a8o9nZKb6GLOMCfZg
	 qpKCGpLS5Njzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C9BC001DF
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169055832873.25358.17137817090513271119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c7407e4c957df4691fc2e6217d005feb587576e4f360d8f71949010b820a4d
Date: Fri, 28 Jul 2023 15:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690558328
