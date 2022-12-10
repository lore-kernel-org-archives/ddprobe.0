Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FC2EC4
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB960C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670652087;
	bh=Jm8uD437ql4j3Zk/pI7mhg4yrVl2r35j9meZ4VC2Mfk=;
	h=To:Subject:From:Date:From;
	b=ZZCsUfz7sGkltr635kfN76eZG3gqk1/d/zhDt2Km3WP3NtSTrto7mwsVM9HoLTLfP
	 kD5k/0PlNVwrRifqI1Ih3ij07GPimBMMuBdVvJorFHkL7z2qm2sBLeEjw0S4rUtJML
	 gmcpBIckevPsM0g3JTM2NzL7o5CUK0nMHvJg0VmH/sQU8m4vGPqtf+NZWaYZGtRmER
	 s0RwbT+qRzeTouFw/gRRZNPMwJT7hCsoxAbLPlys9ResqZO9bGSoLCsjdx11hIdsFQ
	 X1a3MJNdlnFAUQ/QvJqN0YeLazQdpg/IDOBJV6odUTZoskruLCXHVHWKPACrOzdRhH
	 UH3MnE7jz9Uww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82A48C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065208750.18102.8621862394015560340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0452485a0a1e704cb7f8063cfc6b037d196031ffd541ef8b6b560c9f9ecc6c31
Date: Sat, 10 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670652087
