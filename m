Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5423E51DB
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773757494; cv=none; b=FY+iuNrWqxLgDSRKePed8loQGnz6/ogRbZkx2INRMwCiWAuKOH3SLKG8FdQvtBCzCcrrMvHRGe7VmfaZjuDcPiWxBsj4Kgu08GJ/c6w9JKVLp0P65ET1TnMkRPyZV1ca7usSDU9uOW3aiDmSQWfBNlnLTku73mh/R5Yzbqf/q8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773757494; c=relaxed/simple;
	bh=dIqlwmwRg6Xq5mFf4jPaQA0qwBY4RRicLkCozK1h0cY=;
	h=To:Subject:From:Message-Id:Date; b=LUgca19eA++bF+/HN3n4gedngLqwIHzbyeH+IOVHiwp46W4E7uR9xCPrSDl01qixfKuKFrYNEEsETt+rLOWzisFvePwBunYvg2Dw3EstIQagm6VrwOx+o60Ol1FqK9RaTK1MvlvEdRijKkld+WhR7x+lh60GZzQv5VEP763wbi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Juyv2h6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Juyv2h6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D039C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773757493;
	bh=dIqlwmwRg6Xq5mFf4jPaQA0qwBY4RRicLkCozK1h0cY=;
	h=To:Subject:From:Date:From;
	b=Juyv2h6liSSD4fPIoyAwzCbVjI3HNcKXurARj/Pk3SznvES9KQozRV+qxhC/dLobE
	 gas5uA7YpeouAfmAeFQqJuPbhE0oK/ulB94GJG8/ATzJykc4Ip7szP4EHhVx5u6kqS
	 nlG2hYAGNuvpXy7ZMVq2M2p9QVFvbo9cXsK7kbwDowRV/ytIr8TLtqsQH2IcCtgZ1x
	 WC4WLiTADzqL74lBYNIwL4x0Zp9rrgL5pymUAai07Mj0iUczVh88eGlhjqgYd3CKgF
	 iRmcu+U3JQShVBeCWx3ttH2qKK6b9QcTr6R3Y9/lbVyDMAE35N7BYUfFSF+rEQKbZa
	 ZvBe7S992BVIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF3FD877E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375749357.9864.16816431096997967888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1400452f835ca651bbb4e0914914363272f409d1d88a482a7d4bd9dc5e77a3ab
Date: Tue, 17 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773757493
