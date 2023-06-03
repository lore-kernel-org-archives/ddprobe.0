Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758521FB4
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 23:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CD2C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 23:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685834885;
	bh=4Rg6JRwHr5l4lwJV00+O77LyqF/nXvMKU/6oRZaW3Mg=;
	h=To:Subject:From:Date:From;
	b=E2fe+gFVnMOrrNt1+IEqO2CaD+Al5/29U6VL5VrzVfrXmXcgwQA0uPPt3Qi6S5YdJ
	 lS3NBFr9of2DTq++0LiXhZhWhOAFc7M9XsTDR03BAmD5ZJCWcaE/OqXGCeIm+RkubI
	 kCYN+Sg4Qz2FFNb7Obb26I0Ml0Cp23mLcu0E4HuAm/VRgGKD2PbgoQp/3pmoYbrtfh
	 GcN5f5p+Yl6RR84rj37oaIt4YGl0L1nNRaJY1C1AGQ4qWGNvORS1XDagVqxk5VsTJR
	 pD89/NrohwniksVzUIIulPh5CMOwtTgKcqJQvE1ejFVETAzTJzxvtb4m4Fm+cjR2jI
	 Udy75bbbXTfIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7528C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 23:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168583488577.24565.13181396808632809757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e541b8f872aba2bd8cbc11cc54af537d84f143c00d4d3a441c4094495fef2a2
Date: Sat, 03 Jun 2023 23:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685834885
