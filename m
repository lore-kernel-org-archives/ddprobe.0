Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35367E0
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B290C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669714254;
	bh=Ag8s8YOHQVfzS558tljP2ngP9oPQneks7y2ar5RgQWw=;
	h=To:Subject:From:Date:From;
	b=Bqf1sjacccDjS85157KwBJ3V53nBlBndfyLVldrM7Ao4yXoZTBL5gZ52gaKCfXPhX
	 LpKOnyvB2Ww2A/HQdq7SX1r9/sxIlZ6tqSK5N2b5JwlHx75Mn/ZoPNG2gs1gJ9DloA
	 HrdT4t0KuZb5VRWVNKF+EEFUShErI94FDvQiq1HvE93xkl/d4MTQb7Fhw8eRsW5Rwb
	 GRmiHyvLDTl5QMQqqAn9IlIKc9uLJUP4/eUAqjgORrqiYdpdXDoCrUrmpC3H3gesWU
	 gs5fX8Jwodj2XpxiAVow8XcTVNl/3gh9DjZFTrJh61SxmAYMEnWjT35IqTboQY7dY4
	 FRGQajiY9TSuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AFCC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971425438.17376.15106898457980902362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c037375b8b5ab4e7151f67b37cf57a8df3077682826b1e8a59a8f89cdac35e
Date: Tue, 29 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669714254
