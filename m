Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E2E5CBC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800AEC433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670944887;
	bh=OCD2S3hF/rZqSLe5f601WNNC9awznmthzifyUnlyyHE=;
	h=To:Subject:From:Date:From;
	b=UWsDfAznM8B/PNZBOfefJTbLv5LmaqVCRaGFl61TV+b1XhKANR9uEzDb/xpq3psfu
	 MPGK4SmmKBPQ3SVT4LXRqiFJO75u4rokbXXtP38CIxX1k2PC8JUxOsKl/YFSvTGNY5
	 gNideupiQRs6DctJYgJREnvgpLfhhW1GGYC/hKhcCSbPZOji1HK650qB3DetNnNT/9
	 PojixP+trb8RZdz9ag4QOowiL6HGpTJJ4vcn/R+IJ+zT3W9qPUsNzmEQX62JZwKgp4
	 MqD4AvxQlQKftOYc3SBaYh5ooC6obIjGXAMtXbGSR0SxYy0GChUaY0FfX47amiNxoA
	 eqp1QS/YTEZsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6759AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094488741.28335.11968560145760918831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c203e8b07259f4e99b88ffcbcc2c8dd640466f18cad4eb822bfd8ea9bdbd41
Date: Tue, 13 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670944887
