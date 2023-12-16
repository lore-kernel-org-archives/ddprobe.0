Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAD135281
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9gtSoV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CB2BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702763296;
	bh=khh38B1PtkOKfSFt5FHcYnzZWS7ofTmky82FZfBk+ac=;
	h=To:Subject:From:Date:From;
	b=S9gtSoV2qHztW8QQ3+V5Ig4JYcmzZHvcT2ZjrXDue8obsyUCXgIAO8r1VErsVxeWV
	 /PmnqRgXqZnrlpNzJ1gN83lgSZks++adepCI91GO61bOHzwWLRcs04jJxI9+yDGt/F
	 6uiCVJb2vtDGy5qh4Q6ViPnU7eqe6kZeADsSy/TpWxtRarUU1eDOzIpxLv3L9xJ+ey
	 ZfbxstBJL2oXoQaTYqlKqi4n4TTKNSU56oKsJHNkxsL0cNS1i49UEm5Ta1xaJpZgpv
	 WyrHVT9BWYT9MJZaKsTKl3Wd2Uw17/lxXsaC6/ecNSaSiiaGAy2wuVqlve1c51dmGI
	 ALQ9H2hAQB4AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7175DC41535
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170276329640.1038.14396350254721600105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa1e665508e0adb313ade1b7187dd97007d9a0f018fed3fb61eda89df31123b
Date: Sat, 16 Dec 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702763296
