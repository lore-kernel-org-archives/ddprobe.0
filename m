Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39741FC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 15:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64D85C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 15:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686410466;
	bh=43JV4JSgIb3mTNDl8Oi7Wpi2X35v5QcJKdph3bIA3oU=;
	h=To:Subject:From:Date:From;
	b=E0+1br8r0ow1uarInsDdVnF7I7V7RAtt00QUnp0JMZ3XJ1TsXxWYKm3TzGmHaTe/B
	 V6mp2r5hcZPdZwXJIviMElEdvPkusRdiPX9uA66hRjWE1RHrauO8K8hOwqQJwKoFCb
	 rqEGvrXE7CAM0BLERHgq29ielGdaLmEzUHGPXvKYQW+qvzXFt+eoi18SC5OI4c+4tL
	 nUPOZBr8l/U5H457psXWPUJpa1k3Gy0FNJJ39cXJ1thTVjb3khzxyryqSxmsOAIDjW
	 8SZAEaZD4V0vf2wObpsY2y3FN5LM86EZlE+Dh1QiVIA9g7aFiMM0t4SID8hZZe4ydC
	 qXHmiSdtqPreg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24D7FC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 15:21:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168641046599.10093.5739410745364001131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df405f21008b22f7e2d8c4180202b5753d1aee04e0bb46c27730989880dc8b0a
Date: Sat, 10 Jun 2023 15:21:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686410465
