Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9DE171AF
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0i7NMvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC74C433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696672628;
	bh=JF8z4Yi5fImSCnSoSBECyD21V7Svnp3S5BQlFUsskro=;
	h=To:Subject:From:Date:From;
	b=J0i7NMvUHBD7aVExQxeIzUlitx2gTDVunUYS8m1/q+ln/DR4fvYu7EeeQnWH/ETxt
	 vm2vUZ53dJYbPR6tbOfNJcyU1ttOyph2P6atwOnYNNxPHS1DoGwoTQSagBH02TreEX
	 b31kHy6yYpad7IZHJVtWcyBIXl6ZQ1CDmM7GPGByRt/Hfs5MQ7neDJviFXQ9XZYo3Q
	 swTomAEL4loWtUdR1CJh7kJoQkY4XKqp4c0YCfTiGGTSHGxUtQbK2QZSTW+hr+4r7L
	 +SpXdYSBT3+QHb6eoFhkgx7cTpvKvGjEkb4DajA0y8Mn67ehpWlzVKMuMBliyTxA2J
	 RBUlteF9lCB7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B42E95A61
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169667262871.28701.10577432676966901648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f067938919010b872f7154bde641c743149afa198afc83b33a3912db8107c0
Date: Sat, 07 Oct 2023 09:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696672628
