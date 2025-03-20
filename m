Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407002AE99
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742477394; cv=none; b=EJloGgdZBMWThOvC0tlxqI3bQ52+BSrH4A7mrM1jpxh9621CdyBJjCtCMBuIpuxEf6zGOjQNsUPi7tuZVVR7OszbWHVQTfbUeIJZiARKRXDR2+iHj/UyQP+wY0HnR/lOz6XYwZVo5wKLHEXrKUALNVbJwnrfpMvyJAn9hdtcfi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742477394; c=relaxed/simple;
	bh=K+sXgef4vBJ/Xh1zwWqtINX5WlorbXC9QoAxmYyH1DE=;
	h=To:Subject:From:Message-Id:Date; b=beHoGl8v0q7sVhW2hC5VYuRAi8HXdUZrK+oFnp7Vu4h+O4TKRdUdTkgC6i17OLk0q9An6N5O1GyFPTfXkxexB1OT79J36OqTLPZQMVRV1RkwtAU62o446fISuadv0YEmM3rtbkV/epeWc3vwSBRy195QHBQQbMcq0DcoFcdYPSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVO2/w5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVO2/w5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA74AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742477393;
	bh=K+sXgef4vBJ/Xh1zwWqtINX5WlorbXC9QoAxmYyH1DE=;
	h=To:Subject:From:Date:From;
	b=PVO2/w5IJ2rN6F9ZZ2VVjqpr5PkIPzr4WRXwfxOgMSCTKCcpH0SSlxv9+c+B1nhf8
	 OakAXMyFXBa7cMLy2RgBQN8m2EF4YKwVXePJ5WUFI78YT3mOTP9NLiNzR4BGA8jtZs
	 umXx+p5buoRhahpUaOAfi4LKL2cX9SAGg759IpHpEoPOKLMqMzA4NTfQLsS+qi6vRS
	 7oX37+js+/b7twxGWi3DyW7DRNdHqwgrR8jSQlUXRGC5T5ruq6+lWI970DMVbRGqDR
	 B2G7CwIPsY4ZJVeVm7+UvjKebaM95Guf+mQLZ11tjjCbx+iL95vbqxosQWoCIx24tY
	 NCKmOw3o6MLkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8384C35FFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247739367.9081.15181383390316494102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b932a9d56cb60290ba52c4481b3bcc4c32fb10bf507eb2459b74abc5080eb24c
Date: Thu, 20 Mar 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742477393
