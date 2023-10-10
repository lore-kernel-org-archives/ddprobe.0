Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51693524F
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 09:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErfB00ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92D6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696931228;
	bh=vk5gCfZy/FVJYf2GHmZZLV+W6nxKxO3UFumCwXR8uTk=;
	h=To:Subject:From:Date:From;
	b=ErfB00roqta+3Ck37ymCGYcDDhRTrh2hzN76Ok1kBcwfT/OlVh5RqvHL2/uhqZKMY
	 0HGTtVeUMxxRqdsXXV7aGDx7JfNzlv2TS6tfnt5MEGadpa5MnfNYLK4q4I5CcC1CuL
	 /d5A1c/Ab5QcLyJ97vNja++ZON1emHL1GGpRNNpUVUaV5nAzLJv0+QDUfjq5E9np8/
	 xQ64MqENwxI+3wGWtfoJXAt4e8NbERk3u8UPLQcbV9P068hKRhhPs6NW0NPug9QRzu
	 pWLBNb+jMOLcTeJBRBievF6L9n45IiGNjd5kxc/eV9JEZIZEMtmA6893FHBqUSrT85
	 JL2S3nQUnXRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D8ACD6134
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 09:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169693122873.27310.2435750310811700673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d619cc27e620b98ce67621b824df368fd5072181591c49186f2b3478f68dce37
Date: Tue, 10 Oct 2023 09:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696931228
