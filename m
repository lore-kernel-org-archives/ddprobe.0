Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80918351C17
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788838835; cv=none; b=SCRcPggv/0j9jDP9muZkQ6qsafrxgYabrvii7Kd+01v9rZw+H4PBCu0kXKT8q6+HL2E7LG+5pDZ5rnq/z7ZXBk3C0mHhupUj5Zfy5xFTWlheO6R/CzzcL7ZHDJN3y8Rwa7KfwxcwEEAUOzoJp7ibDHmhsbxHn1wyHaTQ0FrFFUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788838835; c=relaxed/simple;
	bh=kxuHvB/urVUx7R+A3anCkDUTr0ojT3JFyiebo2FIIz4=;
	h=To:Subject:From:Message-Id:Date; b=WIT1oexa1uulRQBztl0zvMIHgolYH7kH7jglicHaqfcL4fIgpx+3uWQbwC89udhKSeLUKFRpNpt7sjnSzOBSJetXlrncxo5yVBRREQowrhQS7RXJ8hRvtWDqKebvRYi9JLUVfjWlBBOeoEjsV+ukIX1FitTgqN4xZhpATShaK3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXpz0I42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXpz0I42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF563C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788838833;
	bh=kxuHvB/urVUx7R+A3anCkDUTr0ojT3JFyiebo2FIIz4=;
	h=To:Subject:From:Date:From;
	b=VXpz0I42GIfZ66L1jBZWL0Di4SAqVVepqfzcf6E+SgBrjq899s7euKpvdr3c/UVa/
	 NQdzoydd/otPuPiPo6EQtiNE4wkNtgLJu2tpBCryz8w8IyyWqkD4jCipAdbHcmiG7v
	 aCzLJWVmqBAFMasubfIXnhjZBJ/KuqoDP78kS3DsMYXZzyM4zagoJiEWNGWXWjUkHo
	 wuesfvCdr/G30yRf+Q8vbvS8rkFqh1DgDwM4hDhAdHZPb+DIBK/3AxFsP0+TneDtDm
	 C8X0B6OBXozM0V0kM8k9UflmRjrtX6o8aX3BGodDAkJ1MtJKsIzEgVMon89DGJx4HA
	 liPMhvRAHgx5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDC7C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883883369.20862.8881740987338760126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99b1c1466d3800578491f33df86ed6ded11ca9876b41ad3391a504a06cee1d5
Date: Tue, 08 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788838833
