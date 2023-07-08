Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B53A941
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF661C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688846228;
	bh=r58JHI64kB40wp/ao4hG4OQtnNvFsJgAOvRGjDMjJoI=;
	h=To:Subject:From:Date:From;
	b=T79fa7kNHM9tFlsHnoflkDVyORxc/YVg3/gxfy/0sTyykJqCvX0me6KuthYFIwH5f
	 zRrsnuOEM8yuKmC4zORiMzktohHolTyRMhZA+GYppFJygCl8hSxlUXRxtcDNDaZSPF
	 m3oF6N41bSYpOlE3abnrSCi9UaLFcNUTg5TNpCCwRsA4vyhs7wA+wKLZfVB0e1SBNc
	 tbJaY9W8+Oa1RSzgyR7ImU2PkyduqJZnPeRhboPxq0qVWyHQXq4fsVEGRsx20VRfb0
	 lKfv+CYuq3rrMONWH48t4JW7TpIXSL4Nyng0C9TZm99YAA6kjSBva3mVgHEmtT/X68
	 FyRxN7Ro1KrgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0027EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884622870.3141.6138828889523010603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7bf3d9c0f2693c9efae41363529d82e51f2ba9238c7e767076d53be55d6a5c
Date: Sat, 08 Jul 2023 19:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688846228
