Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220888BE3
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYm4Qd0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B841C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703942896;
	bh=Mils0na8I5D8KSfmdXvd32WNP/MG3mOh3oW65uRRqVw=;
	h=To:Subject:From:Date:From;
	b=LYm4Qd0peuj58ca7lPprp00pAEijsud8AU12XItPT9GBQ8Po0ZooQwX59ERISYvhs
	 AORPcysm7IupGxUG+uSlxD1eITvTvmWHywmfg6ffu9QyctWKIWARkfEoRLCkQL3fe2
	 GpSpO6B8BFdgtJmgX0Qet0TJx6wZ+3UTfRNf76nPFzPG68kn6E9gW8AS09Jj5yWCjv
	 d3QUCTu8mpYWfrLuIbNi0skYyuxqd0po/mVuNaRm/FcxZtdvqxKFW5iCzVJSjyEqBs
	 8wBnoqEMuceHXbs+1SIHMhOQWl83moEoKisCO3jAk2J8hTp/Ufcnjv5FyTAHhWepWj
	 8rvPfJZjd1UGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69181C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170394289639.32194.2079453545266097834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407ec16f7fe7941759c7cbddcbfb1292ce387a94ecb63f08c2eac0e326fbaa3a
Date: Sat, 30 Dec 2023 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703942896
