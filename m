Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F6B363C6B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782225994; cv=none; b=qr/aJYSS6yIR2gFKALaJNeLEtMKCV3LlP5F3VT1r7iAIRvee+Cv9z30Cw754mpX42RZVVLcXs6Jii6vzqdxbhfwuHdEvo73k01HifRnq1t6oQl7FBaUlVCtwhTk4R2byKctLuWFEW9FsjY+SrX8A3dP6v5SnkPNKEH+mfb8AcgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782225994; c=relaxed/simple;
	bh=8gcDjHmQB2WPNRC5Jz9ADtdtgrp6I/dB7cB/yGfqSYQ=;
	h=To:Subject:From:Message-Id:Date; b=ZCrEhM6dmFv6KNm9vQShULAB8djoIap6YNTCY8VG3YVG/Sd/J4oPfSQPP0DvAg+k4vlKdm8bBAR8Bp6kl0+ZM64jJZKE7+0DR4LAWHzZMpb2a3qQZrNF12udlRKbuXmSJVHHV3SnCjQq0hbcip4/dHylMylgPAL0us4QX3kuw68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adRSkk1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adRSkk1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61F3C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782225993;
	bh=8gcDjHmQB2WPNRC5Jz9ADtdtgrp6I/dB7cB/yGfqSYQ=;
	h=To:Subject:From:Date:From;
	b=adRSkk1exfaA7HwBenSpBkrnLsfyehU1zZk3Gann8uBrJ2PQsbimTb2nnoWKKNOjc
	 Y443a16Na3wYRhRwuQo8MB2XavFM41rH5SoFU1D2QlhrHyg35I5NbuHccCLTl0dz3i
	 9n7L+/ybUjuvT2MUrIzeR3reY4VxX9aWJ8JayyqVgDQI5KNQorewSHga0zLX/vxLkZ
	 A9ySRAdw7BLb/6UcR5QdKYz+2Y/kBT54r83msc07wct/Otx26meHWqNBLnYOFYYVas
	 E0Q9NnJ8cC9WmdpP+D8WnFuLk/7U6+MTTCAYxxy5RNvEOf5KOPqptyBzVjxcfrQu/U
	 FHFqNAr3mPVMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A914CCDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222599368.16330.580736750974569682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7807ba544e31abc7ed5a775666004b46871474645168599b9d2279af5dbdc16d
Date: Tue, 23 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782225993
