Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61357200B4
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 17:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C784FC433C9
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691082728;
	bh=GLih97xFXPteD/bfet/tlX+8YMBvLGIQf4YlIjeWqYE=;
	h=To:Subject:From:Date:From;
	b=GnAVRzVSk2B4UHMKVTO7iAdQdplDNjvoSl4hi6cK2aXtkVdnEbiGMbIxfwRHDuSBe
	 4lCuQNHt7szEcIa8gkW6/I50hlP/3STlCB9rJNwysXV5sIPCX8rF/ZbsHit5dimYEA
	 0qRK+9JN3oxgjVXyAq/38mc1gYClYyQixQ8MKB3MZQPMPPcKct5bZVp4sTWgcjBQGS
	 bO1njBvnbRDaTdoZ2zuS9oKsms/IGRGXrR7g141bOaBSnm54isj/oYn/Zwv2Kr+zJP
	 nd4Mshlep8ShBjatrgyWurReWbbSlyIcsotpaDJ6Nptsi4hKhoGU47raKpo7dLwWuA
	 5HnnmH9tDywrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA939EB64DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 17:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169108272868.29396.14192590281431802709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b9490749ee3993b9cd09c96ff620b6fbcc734e619d8c99cc7eba5c6a7f6b53
Date: Thu, 03 Aug 2023 17:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691082728
