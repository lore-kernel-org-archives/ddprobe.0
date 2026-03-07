Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2693918CBE1
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772850294; cv=none; b=lvgAKYHcrjWxYAIpT8/krc0Nr3IlQ+LTxFQuUCQBBMo8BLo4OP3HdLl/ifA5Xn97J9JOs6apt9RiQYJkBda3NMoVsmoUPcrmo+1YuXe7uc80X7ZBRLEcCV1+OCvMums5DYlSAYcTcBS/d77kZK6iIDlkqwRNf9X2iqFDZhN2OTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772850294; c=relaxed/simple;
	bh=qffBc+nLjw9ydrKISpggh5C1nUg4vQ+qRFc1OnjzsRY=;
	h=To:Subject:From:Message-Id:Date; b=cSwKxsPbycoOK9m1q1goR8G4BytN6/Bdx5AKLE7Ywb2d096a++UmidLegAyvjJVMk1z08LD1dDXXkIuU/4hnewyKo8AlLEQYZdYwCMhEStb2UrRz/LU6oEwXN0g7QOQndNDPUvYhKTi5+17w/qQx3lqABzbQ377WtILRPHqe9c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWKefS6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWKefS6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7C2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772850293;
	bh=qffBc+nLjw9ydrKISpggh5C1nUg4vQ+qRFc1OnjzsRY=;
	h=To:Subject:From:Date:From;
	b=DWKefS6MfhdAw2IUKl34ge9JvD/O3WOTDgBDEvQTYCVxIQeMCKMF2S0HSl/6V8ffp
	 HjZeEjRYOSb+sOJ/LB28TlSyotAFMCkfgnvA7IuZPUYgMNYXKHoO4E0mlbcW5AwfgN
	 MNT/6Xetb5DQdFIfUYSdP3okeuUQtuk2Sim2XuguXVUYG8Lt0KjYj+YEohjIJbUhWz
	 1nPX7jyTucJMUm4A8OnOL4Z2ZbPPhWOkMG0ymSTMikjcmJ//Ko9Ak1I7BsqGXpQMY5
	 78kLh8D4WaQyzH+iEi6iT9GuetnAXbOhusaF3amSrHenJucVFVPEQXdxyRU8dDQWAl
	 AO14ZEKXhRuaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5771FC9EC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285029366.24902.15514442617610529632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce203f8e478099e6c0cb60eee2d8e844810ae2228d8179da84cb324f9d2e912
Date: Sat, 07 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772850293
