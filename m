Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A6B10F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85BF5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670665287;
	bh=iLX4FWAzWyEmEDSu4agUKry1OgXUlGyjPQHnEcBURIk=;
	h=To:Subject:From:Date:From;
	b=SE4+UrjFMufP3zXCX8Tv6WORMBf5+ZABFEJd2L+ezHeLNcRFzhIrrbJf4UCxaaf83
	 +GVNaeb8zSVjzvwbY89AlWmgzgTyPxSUeAXJooK3BBAwtUpDDe1OYGRSh1UzNaHG+Z
	 tTmxNtoIT17bs8T9hUOGdHSjPLYziv+TJwZtHxI/0LKV14ncA8924oVGzswduPp/Nv
	 tf9a6v6S9LbtiyqQnisPkitACBBUombFAHx1b+Djt2Invk95iGnkUQfCwSOLypr2Hu
	 9ym2sbSaM9KnWXWD7iEcRGm/CGYOK7Rf7M2TKfmmsmLNtiAbXWpMRGjSplJsr9Z8TL
	 zui9otZxqOqdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA2DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066528742.9826.7606269308325537929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b6c93aec54f12ec1e856c3954bbbd967474bb881ce434421b647b62f4f97220
Date: Sat, 10 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670665287
