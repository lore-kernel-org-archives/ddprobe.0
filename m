Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D716AB80
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxWXHSdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75DCCC433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702582096;
	bh=Re3FNrIh38RqqQgEx0NfprHsBh991NlciiaegsxWlWQ=;
	h=To:Subject:From:Date:From;
	b=VxWXHSdbChdu/g2HzgaQ28g6Pts8EU3mbZtASrhTp2ajzZPn5e8eY5UiZRiZfk8pk
	 fhc9SGkL3SBoYQzJ7RdmVxKXKqXYcAOmlpskbbWUHZWB+nZbarnkCn7OnXNHh+R94z
	 9t4CtdYlbi4TdeQ5KOhGJuK5RW+eqqEPm8qIsMneuzD+aF+oKOiZZk6lhM/zxMbbMg
	 OSeuQC3PdNs5elSvQU/IWV2ge7ijplagErxrDRaX+LFR2AvQLq5b7PJ2xZAiOV5TGs
	 nTci2zMS4/fFS6zaU8T3REqdxxPT9MsKztkaeC6bTOyhUluBBrNh7uddm3blHd+hYF
	 Rvhpd+L1ueHVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE16C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170258209638.30040.3593217964124371055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f995b217c27011c483613f84a2075aefabf25abc4e7bcbc293cbad28df818623
Date: Thu, 14 Dec 2023 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702582096
