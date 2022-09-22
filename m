Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DEFC8B01
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 654F9C433D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663875653;
	bh=SvGu81K/8XzuriAW5kFj53s9riNb02yUrl75AinY/ws=;
	h=To:Subject:From:Date:From;
	b=XOwLpr9svL2G2SBzuJImSl2G+8vgk/W8+Cbb2SW2TIrXhlaSGN7qk8wz+c7FKrBd2
	 ifWTkhKWhhnCKZ/u+S9IvP6YEXAVs8k/jr7RyPssi/pKjjlXfA2MXG2ap2OWiVNgLo
	 xsylpzpLlpmfS62AIymfPuCNPZ2ETrHx7MP090WlC0hqmMX3REGF6ucfXa0YfoaE4Y
	 E1NPhshMRE6jd2akovi6hJXhnjuoK8vKJCU20O/u3210Q3oVkCfVejvdjQy6f2RUhP
	 pmNMvlPSOXfrA7dh7XbUoffFiJ7ECKvTLQgsHabIrZXElKsa0thaA49DFzybI4qOOS
	 rlImdCmMg43vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506BEECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387565332.19240.4584380361833063936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdaf34b10d0816b1a34d87ee878d2f2b314ab31fde381f0c194a3603a7f397e
Date: Thu, 22 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663875653
