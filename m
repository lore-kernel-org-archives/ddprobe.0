Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14E01FB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C7AFC433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661476252;
	bh=z2Xgoa1ZaiTeIbicVOVSrky9Bc1BPkinkeiorebP98M=;
	h=To:Subject:From:Date:From;
	b=QyokGaAMteiIIG+2Lp0WnVrHyMAeOdXzPPRasQs70XZG4vaQIaiRurwG9YdabOqbA
	 TJUNTmYK6eLa7vHIzKyAh5v6iabPocdQp4hSqKvTBPYRhPq0EatrN6rRYjmuKoBvqE
	 QdwfXO6bG/n11BCWnwgCuhb5PR5upMfVqWDwKnmyyTA7Gd49cPJXtFI3xtiFVg6Haw
	 0guK6aY3oRFYWN55n5J6C0WOTmze6XSleynLuNVBWhiE6H68kuPCqjjJl75ugNwfUw
	 can7fE0HQEAywz4MFAETIsTgmw1PacjUO3Uhq+vLg9iYCJrVyzGThcaPwb5sLGZWu9
	 zyCt5I/QGFDRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5B7ECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147625238.24305.13460611249045178967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0821239a7490c9be671e4d453e39bd84c0f351665f37fe58685ede86dca1f804
Date: Fri, 26 Aug 2022 01:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661476252
