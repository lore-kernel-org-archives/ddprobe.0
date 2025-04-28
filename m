Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4361926562C
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745851796; cv=none; b=WFAN+cF3FgUwFcNdCOi0ET07JS35mjT/wKMcKSGne+4Ow1QJYrfk0ol7ikuTk9iFhhQkXT2wn96lIMuVDHos2GLj9bDx5uKL9B1hm/4PwvSIwzBdEcTpctAEO552qqW1+NnombN7haysMKxEV0wp16y1Q1Np9cUiBNFgbGZCo+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745851796; c=relaxed/simple;
	bh=MdkvzBl32Ft/1aYyb/YfbzQMADZEXCupXrXsaW0AMsI=;
	h=To:Subject:From:Message-Id:Date; b=q4WbhtT0KrUYSBymZjCMaE6nEWGOF6nUapy+gH5D/cOSDN5rVw7mf7VLh8sk1Wue7VPBTJd3SQBeBJ4zD7dTKe4eFtDqEYFTsrLYH3ElqjZGniBDWsmtaTrcTsqlUDyo1iQV+Wrm/P/CyxBqyCXSOioMW4MIIjay+Tm6HJ6KXpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJpdHMIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJpdHMIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745851793;
	bh=MdkvzBl32Ft/1aYyb/YfbzQMADZEXCupXrXsaW0AMsI=;
	h=To:Subject:From:Date:From;
	b=jJpdHMIhQ5szqNKBCA8XCaPb7XwDdEzF5jL+4FeYwMp7jYOepppDVyn39l8RBANC0
	 vqjVc4HAVRwgTg0qTYrX4R1loE9rJOJOaJHz76orNkOIyMBh9ZJcc7y+Eg+w/0Kcxr
	 Dpnt0C+YoPXXL7gs/KCIImKlLNw4Mp2JiHWXBhn9gBR2W5rtptiPwq+HPXCV8jwbMR
	 tb+SXrAu0vlDxP3otgnIUfV1Q8kUgWuslfLDm/jirmo2Eb5gnFABvfaMQgz/fCUS4n
	 5oSqPpzP55MADHR3ZBPuO/SQ+rwaWXnuw62th9lVFDoB0h2lp9b8CfNVyX7DToBuEw
	 mL5vr4+ArV1Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F15DC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585179357.17142.465468524822354149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e86e711e9c90cb570af25d213dcc69332f68d12fd52556925a181325034731
Date: Mon, 28 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745851793
