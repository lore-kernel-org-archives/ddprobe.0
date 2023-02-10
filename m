Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2AD622
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 00:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D699AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 00:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675987925;
	bh=gChOgMk56mrdEL7emBbECbjYyTXTzShRYNKsntaWkJs=;
	h=To:Subject:From:Date:From;
	b=NLUGiG5pNRpNhuSFwzCxf4LqDssSiZWaxo7CsQoVfYXJbCVBOnvWrubHZMLtG3y17
	 YES62kvRYItlb8uAfcR8R64TXK4+AqVWOYzizZGV50+kk7O0HzHqcZ+vi/YpkPUONf
	 m/wH5Wm4/jDBKNLwekZ9YsJKLsldPtTwZaotz+axHiAuOeaa0fsoZF8K+iMCvJV0Oe
	 F/W5QsjPuMPNuS39vA4LYfrnvdnUXeNHjKid7a+9G/c79oD11ppONKsgLAAnG6pdJh
	 RvJvJvDilyae/jFwW7ad/YCBEgQkfotRVXgou92X6mKJnl2IvIQwVQqERdMhzzsVPZ
	 qBIVGGIDE2piA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9EDC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 00:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167598792575.32593.12293263744249411225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe959297bf1a8fcf223113c4b6caf1297e486c441ae0b273f006a47cc95d438
Date: Fri, 10 Feb 2023 00:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675987925
