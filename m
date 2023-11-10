Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E23C694
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ivb6nVub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8926BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699660096;
	bh=EKrUS4r/01/xSh2RRnk11V/FNbIECOdiXwqNb2RRq6g=;
	h=To:Subject:From:Date:From;
	b=Ivb6nVubeyZzvC0Ew6q++oEgmi+VEtDkRMNPKqd/dc6J+dKBlWMLGnooANbHE8WnF
	 66BVDzEHtv3pPxCfd0WRKP5PJ8IukUhS3RZhzTVfXO+o6KNmcjFFtbRG/jpXzLTt7q
	 AXQitx03LQRVAFUqa2K5p9Zwab8xfbLe2WSxwWusH+Q4Bbrs+0OAmWxOOtjQI5pClB
	 pfGjs54SnhdRSrOmK9T5IpCC7JUk/RfXB7xmLjl04S7jESxYESiTv7hHdHaS5NcqOb
	 l6e3EU7IC7jnnlSnrnUGYnL25vIVefdbunYT8jTKY84mG0OCulExo+AGMdT67j9tNT
	 XpI9u/itBRuTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F52C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169966009639.29469.9412859672390807489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeae069000b0b5f36a43bd661c26accb6b97ad274f2298e9100544d16c37b4bd
Date: Fri, 10 Nov 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699660096
