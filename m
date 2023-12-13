Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BC01EB5C
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6WwAeCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782D2C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702459096;
	bh=4UxRp9Fg3NdLTOayIvcl965ctujv7xD4rmghIO79CfI=;
	h=To:Subject:From:Date:From;
	b=p6WwAeCAJAX/J13CTrgpdMZs1cuIQPRto+24ZBCiT5eflApZF6kQKtiCSHFIk++a5
	 7Ikof8lfXhFK6hU2m2uSWVgUXnEEbDaQvNi4GrCGmms4v0z7pOPCnP8NSiJGVZHil+
	 lv1B4gzKhLBjRmW/Shq4ogIlJ29/y1eKDBG0WrWnVuFfE5R7YP5vG5lIIvJeI6oWU5
	 dMIljD1IVN/SPMBNZhgHGd3Th0t6UFKOktRr15ssvtVajCoRaAen9XBqTbWdJ70xBd
	 fUWe3Kn6zSqNju85PX/0DBzofxud/Y8kD5ZSEoP1MivbXRMVL4sdlSpAWU9f0vZpNw
	 c1mWbCcMxJnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C82BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170245909637.30539.298444859303670786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7425a2c8089022c00315425f618e631cb7ef176e3c0081d913986b2e23d3d08
Date: Wed, 13 Dec 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702459096
