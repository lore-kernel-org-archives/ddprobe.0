Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C5179DD
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPNb/G/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83532C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703938696;
	bh=ksay2jxFl/OvSuwwVAmjPAqgnqpxRc3PItuV3e7aaL8=;
	h=To:Subject:From:Date:From;
	b=lPNb/G/jJSgsUz51VKfbWffmYuphmnERgsSl435a/rUqbz0MrVIVd4FrbRh/dA2Dd
	 OTppLa1jHvu1Kk2u0DPJ85cIMqMlJF/SC6rzqv+qUZjXVrsEV3Wt994vOCvL+b6Ds4
	 89IT6aQKhNBDP2vfNM+oK5g0sX32xUXzpZWuUCYeSrWHyyYOyo6w0voMYweL/5RMhS
	 CzOFGmpx/eq3+EyGXe1QpQiHYBoLawx898i31e1I47+fHdN2NTLdyB6XIWTTC09T1L
	 XmhT5EcgQTrZ0xI/SPQ2nx8xzyQIUzzT3IaoHa6xigHK8iaVLPjCguF00XYCpl4355
	 E9GmyKgkB5A5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6768CC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170393869640.31773.1348289523081571766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604fa7fee8e9bd84fb316e8a1bea8e686af9de5176cbeb3020e4684e79bfc443
Date: Sat, 30 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703938696
