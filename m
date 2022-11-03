Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC2CED5
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F8C7C433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667469054;
	bh=RWk9LIoF5LOeckDVWO1rJ+JBDNnM/NJWiB4ihy1CiJw=;
	h=To:Subject:From:Date:From;
	b=uKjXmlhSqfRLXG3g/uctmmSPryY8qd2dh0H3p7yoIyT3P7QLeJGRTnYNCkc7VegjY
	 FQ2uR4/qbYeUIMkgYcE9WdQhMlbDYP5mzsnFjxTLZtzDuAmxa6w+46TUdeYFVCGVZJ
	 pfUCj1IYgH6B2nOU64tW6nlEathYTG8uZsFALIY3DAShBTuFJ9KLQPLFSRmAlTtr9n
	 ZbAJjGRYbGhyBs+xiMazKFM92a6soheU5p4t467TaT6R5dAGSYob9Hu5h9zBJIySpM
	 QyOTy99MEPBSIPXELWNjrDYigShfR130D0l0cONbCj7+mJ1pmyXmJvbOANF5VFHWen
	 ZNtf/Mwz8a0hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EF6C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166746905440.19811.9160125266064082529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e363c8d93278b6edd61066f027aefe4eb361b155942d73ba5894c9b474514f20
Date: Thu, 03 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667469054
