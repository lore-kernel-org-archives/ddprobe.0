Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFCD7E4
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 02:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84F1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 02:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692411248;
	bh=sEM6g9Jc1KKBRn7SmVuWBKvZsLCgjuqNOgrjzFX8s1s=;
	h=To:Subject:From:Date:From;
	b=QDe0aQMZvkAAix3jybFkPlg9+g4N0eZGzOfn0GrBQt6R9o18mSRmeElytg/Av9r/7
	 246hJULDCz2DTLO/+gPCpX/BwaNJKQXufvdV2ojh1X6Nv4sXJ8724FimsW/1n+fgSP
	 WI/2jdLVCzqU11Ki7KST7LW39XeMQC2h5pG6PaxEg9laclN/mcPU/gwnJ2RGeGzrHf
	 rQiCf6ckDhRKISuBynxTHYKEqptkycQJfk6EvNBDGP4S538JkEzWH8QXjYEzha9FJ6
	 NxsqXL6NPW6KIGnVcZ4uk9AfA1Ah6iYk3wm/6CT5LZUY4fjR2EtJTNEaa9+57d2qTT
	 ZG/QZFsOC9RVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BEBEE49A0
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 02:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169241124867.1687.1400350250217394748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b906754b7581f192ef8a399fffed7e16621ffc4b67e903c0ccace2336714183
Date: Sat, 19 Aug 2023 02:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692411248
