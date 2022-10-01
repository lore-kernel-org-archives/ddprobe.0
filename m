Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4F43211
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CE3C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664658653;
	bh=5Pdi6ArBR3baFBXoi3dV6QJdjJ08qjD0WiMtHepdgWw=;
	h=To:Subject:From:Date:From;
	b=ObCs+8ueegbe8X+IGgnG+xhqbgM2TnO12/diC/k+IBSeP2t2cPUdSwJ20mKTsTIc8
	 8VoXNTICF7YzOHmKvxxTQKIuiVs+c6MvB2soh4alm6WK5S83WRNGKX4p2s4YUmY6v6
	 wtxciL7OIkSYEWMM0A3f6b8RUE4t4qWGGQTq9Ty8BtNEL1RBg1m+QwGcRuOs8dhFqM
	 TMNDLE4x7cYIbx4Ovh0iEzoTaheIYxgHn31q/wG4/8k5I7D1sXISsL5nyfOoXR0YXz
	 qr6CGhz60qvAcHQ7ZGvb1M3VoprZ2vGpaoigvm9RK0eJiXD7eVoXh2l92vzNEGuvly
	 FjSlKEZedOk8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FBEC433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166465865333.28348.11771443537476075452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dabc46b153b16f0cce37ee27f4d6f442a3427a03657317f2a8f62eb505d0bad
Date: Sat, 01 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664658653
