Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D3B23A2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F1CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673391687;
	bh=EBX5euYc95ZQgGfUJVBeCaFS4+0cql+laVzp2bBiIeY=;
	h=To:Subject:From:Date:From;
	b=myuNtBF7QVDppFLwiN0apO1chHjr+Y2O0tQEkGCWRiQIypB1fteLLBII9pi9mYwIp
	 U08/a3F2I7L47bkdVhajW4KCr8ca8nuCBXuBSL4peD1JHd9UjbLgHMbsX4+SYQ5mz2
	 Jgn0JuVZEIO3e3Zn5nU2c6TmlPP/nM1zV9BaT5+cQghh4fiCqFXV0tQrcM7tN+6Lq+
	 g3sU1/vRIkbQkNS9q1c5nlNSMDS93eVjHcv/4x/DukJoOf8lAxDW1nLuA2FsptnQ09
	 eETr2PdL0wyR35x6bD1tWQrvWosaSD4uGf9Hr/+P2VCLg31gFwf+g2GZ4fsVuT//6S
	 9lDZVa+GBV+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DE5C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167339168740.30177.981152382774013964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f910d51ab401392140fabff230652f591b641b03fef5fa4f4de821332600d58a
Date: Tue, 10 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673391687
