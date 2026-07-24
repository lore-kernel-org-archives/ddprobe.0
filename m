Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D16D3BBFAC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784880034; cv=none; b=UI1ektQ0hBI9LOBXOwbXne05PJPCRnBdCRfW1IsCtkL/Pz+n+E44+hk52/fEM46x7Ez6fKwQMxmreldonbZzR+xB8RfovdwL2v+iqcb+uotsfBa7kCstlMG1nQl3yeF/iTCASupzYdABGRsRoC9mujTHQ6jzmFL8MBKUso/TPII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784880034; c=relaxed/simple;
	bh=urEmCL5b+0xJsyv8qz19MuLkCh2p7lWZIpWpJ9CWt64=;
	h=To:Subject:From:Message-Id:Date; b=aPFytSfDgbPkuGNYvixZwjSLtI6LeEjXhaGgqB2CoeOYQuiqIiQwHYTwA1otxlWWpTlP8czrzQXtZ7cFQuK2nLDuNPNNYAQNGdL/i1rUuJEN9RZhFe4iIqa+jufTJbrkQP2VmY51yDnwB8fvzTkBjqO5Yl2/m+EYSQGTgh5oj+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcdmNLR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcdmNLR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF38C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784880033;
	bh=urEmCL5b+0xJsyv8qz19MuLkCh2p7lWZIpWpJ9CWt64=;
	h=To:Subject:From:Date:From;
	b=YcdmNLR+iPrMHRD5R2D8S2Y1noPgyvCohsHN3YzfGbGQ67frqpcSeQfwC6lbl8NQU
	 1/7crB6Wjnf6Dle8XdhuzwLhBm2eGauCuAXynH0yNwNk/yMQsSzFZeErlUZLIekGtl
	 mEsKQb/bcbiMo5nXFMOIEbJcqIWvLhQ1W1GOIDVnFqX4dWqnBRFcHtzPPUMDjCrCaC
	 PDx/RnyKhgS7t/RP0fXZHv6WyEYzW44SI44+UBmsdtjJ76tglFt4qew6UHkoS3UmU7
	 xXbG0SQ2f/IMn++FUI6AEH4MFrqK5LTA7LCdCPLbEOHD8XgmgyY0P96Vkvhh5WFD5t
	 UAJB73o+aOcTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8531C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488003368.6420.5945082582906784129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9157c195e9075dfa4d87f84ecdc34b06786cafee1600affd004d256816fd504e
Date: Fri, 24 Jul 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784880033
