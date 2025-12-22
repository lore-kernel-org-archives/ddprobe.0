Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D17301002
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766396634; cv=none; b=TgIcbttE8iRRGa9S6QYs8URTVbEDe22Q2bNkSGoWGN4MuUhgwrDvHO7iN4gBamGQG8dcBVbjZWxUmoy4UIb+VvXow7gGGRPyKs8JGS0JxFMJMR3dCcuJEXUVALB0Y5wNMcO5yIw9HMeovUmc7enOJUMnI3YFogdOiRMpo0ZH/JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766396634; c=relaxed/simple;
	bh=5j9E9im7uyJGqegEr5gVri+VczIH3PJRBSImadIFi4M=;
	h=To:Subject:From:Message-Id:Date; b=DJ+6BCqdpF6K5Q/qlgN192kEayQ6OHra/465fNJwvUSc/fskKwMr7OmPdg/dzG3WCCMCiC5v+UAXazHSL/dbbYyTCVCyBYdkj15nR+o+Th+2kkk3WsD+2jR9KcREw7I3J3wJFwsYrIcvx2bI/dnPqsUnYVPpBwWXS43nQC/9WQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRrNJEet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRrNJEet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF5BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766396633;
	bh=5j9E9im7uyJGqegEr5gVri+VczIH3PJRBSImadIFi4M=;
	h=To:Subject:From:Date:From;
	b=uRrNJEetaChoI6gXCKhYxOF86dwt9M4f5Aw9ZZQ5LiucxbjMuMRCGmtWWuf6gSWkD
	 JrAsSplOdGjOkfFrIe1T6oSgHuoII20LgmVfrWyHJvnhKeiU9hUj3MijHqeJDICufi
	 SDa1Qi/YkD1yz8q6U4pSP0atNrcpW8NpsLKf9AXQH215zHnowsAUbOaZieUPf4L+sF
	 eezYkGM1Z23hl/ROERO/R9jxYByGBPaAnHtjOP1gKp2uO+5vQLWIMbQpfegvxI572H
	 JJoy0ncQh4mNQaeOGVpsK2pr6DqCffKCqYPq8Ybva0ZU9XUxvSVlzT+nV+qX/xoPFg
	 bwyStBSWy0iJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7AE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639663358.2628.17242787969558789067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8aa31f948215e7395bce00d740b7078f741792851b02a85a18ef3d1763fe65
Date: Mon, 22 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766396633
