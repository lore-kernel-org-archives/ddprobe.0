Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3F512E69
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nu8DnNCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5C5C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703358496;
	bh=8wkymjS7GVF2416ePzIEXj8ZscQ/xf1xgx5SoU/zDls=;
	h=To:Subject:From:Date:From;
	b=Nu8DnNCI+Hww3ZHR2TdlmM7Tdf0sV+iXMFoFMjwfvSj9w6FWoEmSGQPOEZqxL+2NZ
	 SsrHqsJaaFMSzUVaxSPWmvmc78r3V1Io2L35InMCbp27Ps6N/midzecRDiZ7IcICtG
	 sY6kQCAL4OfsjSEWh9NOGnit9AY808sBQz1olmCuV4ynyqMhQZT80GXRGoYkD5/DQT
	 i02z53lK/sPP7XITfREGsi0/FU99kI0DA3BuMr6yadh/5ikns0/bpbjRCCjBX7V+9C
	 TBId1cNLXEp/3omg4f/2aGikaHmHHlS6HoYT5MoZbThZWRWD9zB2u2Is6/pL6W0qoh
	 LHiSei7k4/STA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B9AC3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170335849636.8336.542951950410873740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670fa52c220d4510f9d9e06060d2695387df15fec147e19ed540346cb1401ead
Date: Sat, 23 Dec 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703358496
