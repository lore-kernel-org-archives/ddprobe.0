Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A897E6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70ADEC433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666674053;
	bh=3NSOnsz78CnjRQmY1r4xBtMxdcSWas2AvY+T0fSZgHI=;
	h=To:Subject:From:Date:From;
	b=PZoZCexLVKQiohAeeNibh8ELu5unzspTvtt5aL6V8Wa02Qgj+28uaDa/E1uLFNIpI
	 PcZoxDHMmgRE0kWG7uc+4j/DpDCtgM55oo35+QyXBsiTCJw5hrKbO+QTfvu95kOtgo
	 qB45+lTRRyanV33O/PV0NYuliWoaMvglydFtWEEw1r5SsaBsS2Pna2i5vtVccRW9sU
	 j4Ds9kyAfRsk5rd6QRCPjkgQSxIBg8xncDBmOydzxTBC6AABFBAyLFVu+nS8Pf9lXo
	 6DehWeZirRS9tbBY3aClv+n1OmebbtxaPMR2jw9ETQWu0t5FzoYJu5kVgrx6IkoqY7
	 t4Qe6hh0t62aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F38C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166667405332.30667.10217566843981945107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd78ec886c56f17ffd1bbaf1526876c54807d8df2ee912e2c952fb9a3a57436a
Date: Tue, 25 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666674053
