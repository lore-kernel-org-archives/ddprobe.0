Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84352CA6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCB5C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668873654;
	bh=KNbNwAb8XcA5q2KcKDscnNAFo7jRAJMHgUPOxfmuQv4=;
	h=To:Subject:From:Date:From;
	b=i2g9hLgIB4twXC0ZXjddUTRq0mhQkZdRV1IOk4P3cNP/UeK0nI3nCneTAHvHEtx56
	 gacQyNc8B21urMHiXB2iAtt2003K9MD3FAfUPIEMCWJI5+E1xAVkfXDFh0UrS54CKL
	 0PuCo/6RfbSx1L3BVRbRxP6E1OISFylVNGrXw0EskEhvgJl+eOBscjWDYxPaVuIuI6
	 9aVkjQPP/jCYt4uxBJ7yiBww0bn6uJFkUxMWAIgzxOoUFmPtw1S1MfsDIgTlrSAfHZ
	 lQfginwcI+5vn/U4nlYVvgS7iYIZYQ6HwDYlIox1muFxEOezVbBj7TsTn2LXPPiK8m
	 ur8VWn2r/836Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F58CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887365436.14364.10472852728435490980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889cfc5d8265b2bd12098aff0769af52e626309f5f6a3c71266566f171af6096
Date: Sat, 19 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668873654
