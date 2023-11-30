Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D345FEE3
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ac1jIEak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7849AC433CB
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701384496;
	bh=h7M6qckwQImME+PYxW3nRrcnJMS8WUw9R3gOpE78mcI=;
	h=To:Subject:From:Date:From;
	b=ac1jIEakD2aGuwgJt6MoXncXx8BCfJpOEZypjB5lN2IxCV8OJdHhOEZRdEYjqeArp
	 2dlBsgKr2jf2kGAeBcEIh/KlBlIVF240RYkdoJD6R/PCep1iwwYkcmGiMj0iMPMq50
	 fwmIw/J1fmNTT68A5fB1yKXEfHQkdwy3Du/m8wVYzg7Ac+pcEXYk471dwjaj23Td2F
	 lzMEF9z+q4ZKgnwj5UakepA44a1OLJSxhU/8WE91HQMIBUbGw3pmxkbUP4YU+kJRjQ
	 Llo2zvUPNrQLUT9aMOYc8koYyd/Qi+nJ/vbrhjWvPgDHhugYS6SBHXRsPkBftuYSAr
	 jYGuvRW0E3nfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D185C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170138449637.22908.18152657272766830697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070e44a0173fd3869966b0e586cb0f1ab4e22fe67627a96f3326df8d2784bac1
Date: Thu, 30 Nov 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701384496
