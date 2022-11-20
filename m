Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E2A36C
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C7AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668907854;
	bh=UeGtEen4y9dS77r8vwJaFDEhbssWscAoEbyPoJ7rcgE=;
	h=To:Subject:From:Date:From;
	b=P0v7lkKgEFu124ZEshT+CMzOh+EeSaDJRJrIAqAHVt1Xnrpp9H87djOE8MU1hbard
	 oVcSVpm13ppiWkwqnIIxMQz2EvIo5DkrPcbDa5bxDPL/mC8+RyVB3fAc+hZBRiI3oy
	 Orz20l3SfUUNyhin2aNEm9YYn/0N4CkAwVnvMO0tzIlUfqTMhNAGURxwg5SaJr5HYY
	 GlbzXPCEwvBVuksBSOatGVyczn3yFcXIBo5mPDjool/bfzhEUjQsJtPcubgm2WGZ8o
	 pvgSzd49WPYD3agwVa21j3h2swF9G9He8+0xld2hvdt6pkYuIBFFjTJj4JSoZQmfPe
	 xB3apChZGF6Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56387C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890785431.18252.12553833164953226326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0911aa4e4d3463a24ff3c87955e4e427cdc66b3f3a1a4dfc3f734cbbcdf18312
Date: Sun, 20 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668907854
