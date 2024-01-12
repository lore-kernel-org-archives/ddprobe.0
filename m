Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229535C8E1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dagFYB4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 996FAC433F1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705040296;
	bh=DyMqeG98+ZjY+qqPmmI5KQ27GNjZqu9IoTXRfVZIU2U=;
	h=To:Subject:From:Date:From;
	b=dagFYB4u3MRk3wHRy321w//JXm/VUHy/f/Hu1fhxPJ+g7HLosP+tbcC3tf2ET8slS
	 NG01HOknrWtGUcC80+4PNQKewu8wBXOz4A7xzG1NlwAGxV8Khi8z9+U68ae+3ni5A9
	 67JHDt67WWvtoraJZ16GlGBT5qgdRZCyXZLQ1QqkV62C20BbzMSDqQcLoLvaf4gdLb
	 LiJXr7SH7ztylKAAGclStJ2DUh8JWuiS7MXgbo/eiQFSHstlDPhSU/v0Pd95p/pJfu
	 hgKHCOh2Th4dxkswV2Sc68PRszgXrGT+ZByOBhzyM7n+WODKk3OF8O1N3IMhOywtR8
	 JdacAZX+MmNrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78D19C4707C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170504029645.24597.9715114723153728264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0164fc61de5f9f90d03629501125adb9023d8a2063a46eb35fffda1e90fe8374
Date: Fri, 12 Jan 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705040296
