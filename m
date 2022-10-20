Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A768D7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63CE6C433D7
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666296053;
	bh=AoJWVjyUwLXXR15qF2cDSe0bLXn3NmdVxKgOrdoOH0w=;
	h=To:Subject:From:Date:From;
	b=qD91qxPsGNFRyvfWumz0XZE+YScwhBsvVej0niQxwdpcj96rIQEuDKi44GFFM1MQG
	 7McRHXpEoi2QdypbXSDvRWlKtHmEryrbdmbwZIuOcZx9yY3qYyQVRErIkXJKy7N8O4
	 xxHaM4G3LjGtKaYmaG9cecEltCmdv9PwhT83cP7jaToNUAuCetugpsPcLiNd2LmuUC
	 Pun9tE0beeK8+tb5bs2MIg5kvEGkz4OvoMf2vawOdg9HBaHSp9PhQNoHmRn++95Zdt
	 2hJceR3ht0aUEUYaS0KxRl5WrxauRlXr6tOpJdcVM0uklpOlJz+hWToLdBWDPJNE+Z
	 WgS2cHp7nJcJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E6C4C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166629605331.29339.9442219467647277942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193e48b06946f76c739f8881c72b8edd85dab54f9562e95f30b8cab6ade541d9
Date: Thu, 20 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666296053
