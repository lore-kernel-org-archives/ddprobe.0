Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B2616416
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 14:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4DBAC433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 14:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686925748;
	bh=VTtNOFsnktRFhZzLqnlNF4Vk4tnYrGQvirn6zATFfXE=;
	h=To:Subject:From:Date:From;
	b=mgKDBKFhGN5+IyGytYAnUoL5yL8XNusSVvDyUnzy+so3GygM5cDW8JS5O/Fthy2AG
	 tAimFCgtqtDuABqpTg5k7LO4kXfYMl+hPos5UVtzVGjM9buawkSFFAwNGO2cNqh4AW
	 joPiJ8sBEfBRoxuyz2Sy46k12pEy0cn1h2n6SaXy1285wremI/i06xu+1PKiPgsQTY
	 uDH0fe0n2vgISSRa2gMkksaeO66V6yWv+VSR2yskZwDpvD4aYJ82I5AsgjrDGlJqRd
	 wKO1pc2oZRCeAoYQg+ni5+0itZsZVZx2EfeDfm4VzohXk+tPJg2XIOcvJnVm6H3tcg
	 QA2yNpDyz4ogw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA649EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 14:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168692574882.14321.15592079988414683686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897a511dae44f0bc4d96acc714d700f36c455374e6206b4b2748e7dd29b89e56
Date: Fri, 16 Jun 2023 14:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686925748
