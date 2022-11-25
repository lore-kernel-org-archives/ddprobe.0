Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFADD5CA4
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70789C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669392654;
	bh=PVgXRKEDv8LhYDkMWGbxXww0G9K8wP2otRxdS58M7+I=;
	h=To:Subject:From:Date:From;
	b=FmCyWRqP2m2tk0xz+bkGRi22UXQM3F9qffdp+vEBXsz4A6FROxxvkHFwf3us/GikG
	 Q5mH1mBpQdgvYiifAQ2vnHnpStK359m4OcHNL49RYOU69g3p0Azia72O7FYRFKHj+A
	 WEqVcumQO4sq6b3pEZ97gJfgYijnG5NOqyKpxHybJfrbzUQ+Ud08/JL9vCv/xWTwu8
	 3wjk2KPWxsPyC3kHSEKFNd7uz8gbHEd690hxCgpmfqetKtfCLFFy32L82w3RZOFqKO
	 HFIub1KXN7C6VsNhc3ocIBU066olvth1LTjz/qCV3mlXYM8wj87fzFdZ2uyIR5mjkn
	 W3IGB2qkQDpXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB52C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939265431.31657.2349822695154868248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4e2f95464b5b4be624238b1ddeb2f1d83a1803c36c23c5509cdb072e1475a3
Date: Fri, 25 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669392654
