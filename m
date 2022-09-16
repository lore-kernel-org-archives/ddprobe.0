Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F105F5CBE
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A59C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663347653;
	bh=0s95nZbP9GFY5Hpyv0Q5cfny71g5Ksr79JTnNXKfOM4=;
	h=To:Subject:From:Date:From;
	b=GVC7UjzZ89z1r3XsgrRwpYRP9Z4GGRi9PTLD4ZAz+/0n0YqeL2n/DJFEvpTGQlcoM
	 dZkcU9QlYkobtOkUrG/dC8oplV+fpfOR5YcOv+9O4lHa6z+y7yZzt3i3QLB+fo7opm
	 vwZnpHg8Z05l6BRLXxnxgrzDHvpEBsqJdluMwXA9s2pb9Lu6GO9ZD+M0auwAznde8E
	 Ir9ij8clw8w8qXzRHNyAczvo6hqC2o9EcRhkHIGyIsu0EaVwZ5jEl1jPv+Pgz5i1d9
	 mfIqBeXD2ZbLx7QcYLf/YPaDwddADhwMszgTn69XizSGXBtoJaDvaMXUL01I9Qa3Ki
	 7po9MPC8YAJNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87FABECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334765353.24459.2647186662817431475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb7bfcfc454133784fae433caf4c496fe49cb93008c9ff257626982c68d0215
Date: Fri, 16 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663347653
