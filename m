Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32971C16
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94F91C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670767287;
	bh=D7lS59WZ/DwZrtkFrAXRj4qiMRwLas93KM9NDksUw/k=;
	h=To:Subject:From:Date:From;
	b=GCWydkWd4AHSGSt+pKN8hVHZ26V7apnDXBDo5kYdhSV+HdrdwuHK8JJkQuvcoCVDP
	 u/ce1TfxRGXhfZtM+ufMg9IzAfkYg6gh3fLtylyxumRvEmU4B4QjdoJP0izg44pm0Q
	 EA9P4emkB6jhPC1w8RYevRBJ9yspOzBqxABSdzNBTsKpa4CSNDvqMbs370Gnim2hpq
	 wBkvUptQ9aN57/pLw03bYNl4epC1j7/BYlSqLszCO/4ucvD8ypTEMQwHD/JetZ4ubr
	 +7p8daR/ZoGuJ/fuoAb7GW7jQvc9hI3cPhUPav8f2/v0thAcb7N+jeFk9iKmYGjjk6
	 uXbdY4JaseFTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CBCEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076728749.14116.8184524195391323839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcea095a702b2039b4aaf05f44564a1ed4b5065c7715022906a2169ea67adfc3
Date: Sun, 11 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670767287
