Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550597E
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 02:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B6FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 02:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676342045;
	bh=X2t3gkBWMkdUorJE9dXI6SXTQXvmTDGVSGBZWobBSPQ=;
	h=To:Subject:From:Date:From;
	b=IZiROBUMO1Is+0XX7DuK/lNJJ7HxrmRKMx61IvVHy6IbkvjEi5CyKgvxekS5FlTDT
	 hixifVYTVsoAJoNOUzw5DIdsC2ieSWTfl66ojC8el1yDKCBg29iFtxdziRMu4o0S6b
	 LlEPc3N9EzZeM+e/UPEZi4V27NHgeRhE9LR+fUfgCVqqsZe9mw6HzjX+xjcPbVvBFr
	 05+9pXnXn62VV/5lt2ke4+si/6GMqOrQn97dJ599HqlnKBM9IdPAN3v6wLh8vjG9Z5
	 tmg4XKv6eJk0igOk+yEJYh2kx/Z4LQvONME1C7BDPkXwk4st60GEIYAeqPgnQXoodO
	 O9lAn8Qxnce/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD90EC636CC
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 02:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167634204574.22386.12562557009738764951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa2d69236336bfe5ae00fbe5e713a92ebc2b6d9ce1bebac829ce1746c09b099
Date: Tue, 14 Feb 2023 02:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676342045
