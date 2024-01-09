Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BD039AD5
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plVI+la5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B607C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704814096;
	bh=6Avih//AjLbt7j28CERzBFPXMeeMItirw5/O6F8nOT0=;
	h=To:Subject:From:Date:From;
	b=plVI+la58KEKS2Ap5bd/Mf19W5SI87L3d1XB77gPZfJbhdDv4gGWzi+jvZgMMuFqx
	 pvziRdaNPq48ZzICZLQToDiZLKwvXI3FLfHzwf+iIE0zizIO0Fe7HuJWnO++tZXgMw
	 mBUg0pJ2nH7ZN2WnQ/YPErI1YGKdfV8K8qeUvATr2VMUl+H4ONfaMLf14i+LjD/nPC
	 cOEUG9x3RVDJwaM5CSKCJbGpiBhqS9VckIXUJ5sCtka/xjmUHoFELIva409lHfd2PM
	 L4We90/tNv7Z+rKOw1UsfP785RA8WytA603FsJlJmSXRmZAmYTGeOowh73kfVqvl3/
	 6W/3xNymBIekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C59AC47073
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170481409636.28079.14611201130393249019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c84ebc34d386206ff9b98138a0374851ad56b93ea4eb52dcff78aa5311e5425
Date: Tue, 09 Jan 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704814096
