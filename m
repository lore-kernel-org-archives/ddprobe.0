Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7E93D78
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE37C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689936128;
	bh=vmUaKlvq7XTp1qFpr7KnWc3Av8txJObJUix/h5OC6N0=;
	h=To:Subject:From:Date:From;
	b=jAfWUdDXku+UWgRPSoh/FDLYRNgcNvrEORK9OsfHW1D1EKlRAQEUBSXRwTOoRLgIl
	 1DQjO7tK1fa702oKKQWqLo/QqizREAwwwAVFC2KLrctZ+UXhMsZkWSZ44vKmlI/RQj
	 62zMbv86ejtDtulr+xAm5RnRTk/YPnPF95sPUBAeBiQP7/hsyKYY/fyzUztMBA7ept
	 wHwUyob5VpwDh9oqYeJVgYGK7DX9G6/dRxahlkDwBZXBXEGRZ/K2wRoLrqW89LL8Yi
	 U8KQ8nfWntQGEg3L+cRq+zkCf9c2iAJq9rqxTIR1+nM+OgyPCK40Nx+LB6eiNc9g9p
	 FTzz6Y+5DlJjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C15EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168993612866.15454.14100621795284522567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2f4a6763f23fff3b9baa937b8278dad6fad20d394ab143e125e712c722353b
Date: Fri, 21 Jul 2023 10:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689936128
