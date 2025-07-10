Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1212F2C4B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752171594; cv=none; b=HzMO6MQl5jEy4n/z9yw4TiKuBGzvLPmJlLvy3qd+aII59t/6TF316JVbZ/Dmdm7HW9PjTrDUraWVpVMYzMdjaWNay9Ih99IzDz5uC3dJKsRCSA9StDb8q2cN9DaQpZMunI8iY+2RL9PpMDqoHq2S72TLleojopVVbxN6PYtWnrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752171594; c=relaxed/simple;
	bh=avfxLFxCxbtg2t19G9J9n38cvxeTretn4zSsmZwU9LA=;
	h=To:Subject:From:Message-Id:Date; b=DtshTCNMPmh4MZIFBTnnVQo31XUlVBBUHiwH4OeRxP5+uaIRozF0WjPXkOmrBaTiATMqCCTU8GpL0q3b4Bb2u9Y8wTh3ueQChkApxTCrreL0sqOkCWj7kHYJIyGrKs4B6JbB/GBLgNv+R2JU2ZyYNYnqqCgXyj7/qVp/cesV3+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2JqGTbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2JqGTbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0DBC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752171593;
	bh=avfxLFxCxbtg2t19G9J9n38cvxeTretn4zSsmZwU9LA=;
	h=To:Subject:From:Date:From;
	b=A2JqGTbvCw2vGGD7JPwCbKU7J0t2bn8oWot05A/2Aey5cmoyWb4b0G/qKPbqrwwZV
	 TihCgy40k1liFuKy5V6tJD+ocpkkhdoV7+I11DwsPYszwgNZguc/f3oODDpEhODFOb
	 4UT6JflncGMVQcS7E+sK9puK4835zlthNYy7EkTwY6xmUxdRyVZ+/X4BYOQye3Il4y
	 ZDV6cZsjTXqKXJjFtqqtQxcpwKxp9xyqveLhTHM383Q187b9W5eZOjCqhzFy4LYlzZ
	 YCFDTtyTf88qEXZZq5DqVvi7bRp4oVPJejWnpt2+B1sEIo/HShZy1WFXl+7ic//tDQ
	 KXSJixIAJKbzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E899C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217159357.30445.14929823738927079489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce0398faa484b94b513e8e27bd0a280925c69672aa49b77514736ae7c1d613f
Date: Thu, 10 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752171593
