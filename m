Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C561E3224
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED73C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669732254;
	bh=Ce1Pthvd25C2684aLyVmW5GpxJ8V21Xn30qIgo+zD1I=;
	h=To:Subject:From:Date:From;
	b=Eek9BHoXTjLnm7N9cpGcT8GKGUWaI87KiMC2nMbdVighuE4FxvokCnXbBbrGoZcU3
	 PtO2LczdE+nj1I8n11jMpGY9umaXqL/N7jaPhL/bmXjCh8/1eCqbOT1olbA+HdDl0d
	 4k71QpLxmgrHHN2pvZn8drkAv9/l/SeOoX2iKcqfMbKBEtcqR2YtOrm48y+gdbRLHj
	 cYPi8i7PaMR5vvfxVql9XqG2/UKQ/BNkYsVJuMYPDv/o5aLLI1X0ayFJavpUcCtOY1
	 oVnbscXjKTyJvslS6P3hfDEq5jkEeAr7qGMm3aWeLcLhpEopT7ksKEi3yQShd0riPJ
	 T6VR6flCV1kGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564E4C4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166973225434.4038.13207524025564214051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab1b7c7f5ac7d0646515eadbe70d9cf70db61b60adeaa7c4ce645e807680ccc
Date: Tue, 29 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669732254
