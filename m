Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871F2180
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 00:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07F7AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 00:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686442326;
	bh=5M7nGMxRFjT1DT/qpDQw1UQAFZ24JiQwhtneUquafng=;
	h=To:Subject:From:Date:From;
	b=B1bXUrrIAiajSV7VzoN68n7tJQgkm1h+dAtDH7HfWphfweafY91WgdD3ufJ03XRDe
	 kUeoyoj4r5AvBQIlfomLpjiO4LkNfPn94gXkLE4YJ7jjOcMQNAlbEGrB77ZxwdhgBZ
	 JVou4ggej9z0vHC+dsRWeiIOWPtW0q5hi7unI8vOOlKKMUx/rnKEGZk1IxZHN47pvS
	 FlIIXp98PuqZZ4sTmoThGnM6b/5epGCa/54bI7rXc8gKikWth1jU2Y80wUKjZsBywl
	 UK/V/JCKkoCgC/+ATmOYgygoQZWbSb2sqxQFNriUck36aiGQsIiLHLllgn1YF2ewm5
	 3TbRTehN1RqMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D282FC7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 00:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168644232579.1721.1065767074877516507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfd95881b462fc7bbfdd51077339a3841f8a9365842e455c88ca3be6c9a1dec
Date: Sun, 11 Jun 2023 00:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686442325
