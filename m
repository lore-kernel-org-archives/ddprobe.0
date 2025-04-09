Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE9926FD9E
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744217394; cv=none; b=OdR+MuY4bbL0Wzzh3+E38vL4bEX452J+aKjiBh11EgVmxBOAgpPRk2F6fVXVR1kf0JxkzrZ2p6eg6kRbGYQjbjqWfxuM4AOZWOPRXTGvy3p41r4FVILg5doe+YMDjbUdYJIRZTS1M/U1sB9L4qkMTEoCoy0gxoYuHvkGBxqyDvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744217394; c=relaxed/simple;
	bh=DcDH4/b93O1LSqJ8PzACnbzq7VZiJgBn31WfXEUyzjA=;
	h=To:Subject:From:Message-Id:Date; b=rLn2sbW8mcwxoDU9rCjMoqLpTtvMJ0QMKohnT8BqvziR5Oh6DXpqLOy9vYdfYbEcpA0X1vfq1qJObnO/0Ffm3rmZdRPXxvvwEKLowbkrzaJHDhSeEBgWPMfqiXTRKI+4AOVAyO/bUY+M8j2SyZwJCF4DkZYDjbzO1fYJWak8cVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWcp/W+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWcp/W+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8422C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744217393;
	bh=DcDH4/b93O1LSqJ8PzACnbzq7VZiJgBn31WfXEUyzjA=;
	h=To:Subject:From:Date:From;
	b=UWcp/W+yUdCHXZzMOm+hl5NXTJKD1nzD9nls0uA00Bl6vbCu+41YhWWpfQ6Eap4ai
	 NfC0I4tFxiIgFXmmSiGu5/M7slWJKV5J6qYMMdJRdjQjJ6ROvjwqkI8QNMoJwwsGtZ
	 Kfse5SBCSG+7aWU0ayHj0tjYNyGisJs1mRNEbf/HQSrHf+gyZIl8dQwQ1YvcimcgBC
	 5/p63MSiVFoX0K56o8pRoykaOYtmrLWCdmrEMYlYciBNRzF4HwzAuaaezxSDQfZ/Lk
	 09Ws4JU5RCGg+xi62eZ1nzD34if8h68O9yV0cnO5DA1poIhGY3IfueabMb5j+smCIL
	 InpiTIBvnWGng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18A0C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421739363.31164.9361265306588564498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3edf5e5c5003ff33e6cbacebcb22fe8c9964b5fdae9a2dfbe6e87de61439dd
Date: Wed, 09 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744217393
