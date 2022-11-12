Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D070F63CC
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C338C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668283254;
	bh=enM3QCx1FdgcZ4cotVP5nqCq+w9j2WsFUwbmdA2SAjM=;
	h=To:Subject:From:Date:From;
	b=gn5IRZqDq2sWYeepUQLHbAKb4fEx58PobMb/7PopSUi+7zbiKx9HCysce7lCYjj2U
	 S1WqsYxo4wLG+zGm6jbEiFAyRITlIewKOzLgkEwrOa+D9MEJ4SMHNcFXyxcRG6zLaJ
	 EJ4o7XBAYEBHi4K60HOQDTNIq3iX8mL5WZXDWR6XXDrRPzZuQLIMjKniPAquxGjR7B
	 oCKIo6q3ElvLD3pyYZSmZraebD0iADHiiQa70h/dkUmVV+YYF5beb8PIRktyiowbd2
	 Y5Rzcp0AW3C3Sn4NBAW1wsJlFNPE8lscnDy0TyUqXGOZTEhFWA6/8KCu8XCXkft3Fy
	 82ODvSwVfmMqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC0BC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828325436.6371.8999735618269606086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3483acb386754db7cf20014e3ed9a30639f002fdfedffba174a889946ace6b
Date: Sat, 12 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668283254
