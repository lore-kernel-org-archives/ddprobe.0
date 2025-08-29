Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAFD1EF38F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756439994; cv=none; b=VEuyPDTnaYQlGBWEbr5s9VOErhweJz6MAyg6Bxh/f3H006M3usdQiBcFU4OL4VSCTFuqpCnPiRA0kMPDycqet4K5F/DNnrq05WcqI1fwNvxJ7PtTmKsYtd/RVnBW81frFV1k/UbePySXJiviZRywGlnHzWgZuzLnLMW2mmIQbNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756439994; c=relaxed/simple;
	bh=2wdqmRIiYh0eE7gOtN4ZVj0JmWLdmJ/yT3h9BEDwxKI=;
	h=To:Subject:From:Message-Id:Date; b=ZqYJbiS6GvG0zTNFNTZji5gyHIfOX6w2rbL3gWSuOq6THjWzUQqXDDPB7nBc1HNKE8Stus9MWO9AaoiSa3QZUMueE3O5qAnx6/lhxYaB9EWHUcOlSRru9AtUR2DGoESWaK2oBU4W4A/3U5SdA3ZGnjIlVnCTu/sdTzaFjpEDddQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgV1BS18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgV1BS18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C73C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756439993;
	bh=2wdqmRIiYh0eE7gOtN4ZVj0JmWLdmJ/yT3h9BEDwxKI=;
	h=To:Subject:From:Date:From;
	b=WgV1BS18s3wxGgSwYvk+nYwZEqwnMR7YwEmc3kuOVGsNOCGoqVwTt1kblAugnalKp
	 nBXvSssfETyPi47YemDws1zWFTcqYEjTxPWsuDEETmKpCALOqUl2gPEuzFs2RdFaNb
	 SOmwFbd6NHl2rONEeV0zi+ZW6keHDSa52bf5SfuDQgmA6h7AAAbPuMrrymAE/ke6XN
	 paW2rSM2moeV+O0yYkAgnANGBgz9uRK2GU6mXTmfbZiGDyRhgjFj971FQiN6yQD4XA
	 uPSODhCqXWxldy/CYOfBszO3VtYYqneSZ7sq5L47Qn8Ouhkm4Ln1mHwWleFi0dCYu3
	 nKZi1J63ypdWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E552CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643999357.18292.10708676324894705750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46965abf89636400db9b5a746414fd26122636b811df14762a4a3365209e3bb7
Date: Fri, 29 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756439993
