Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19C22CA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80956C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663876253;
	bh=C08Snd0YrEuk5U4c80w30b5nvImBPiSbz4wV9XeKclc=;
	h=To:Subject:From:Date:From;
	b=YQHaY47kg7b5bWRSjvpcStTnYvyu0yp2cioW85BXr+rElAS7TG/5taXAKLoYdPAU9
	 TCB3MdsfUmUNp5vxkE4vLTyQYtCNwfB9uv4j04nQJ99g6lCOUooqMnxA0FEMi+jpRK
	 TpEZ+1hzEt9OrdtZNEcCvcm5LyQmcfpYKrccYpZOAUv8vaOn5++tqWX/THAkxN+yKi
	 lbeFS7aoK1SUd1lVchULHC0HuhuIJB9MHPbixlT0raognTZpf8bXbK2OCYNTG65bkE
	 Fs3SO9LJAzd8abQRc0aEFGbgiKAsmkptqK5puqz7YP3yEtsjOVO82Giu60PJwet06a
	 pJA/DZBF9pB5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666F8C54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387625341.18725.364565662379521369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833ac4fd46f97c8fdb65d03b9bf43c3f504c7dab54011bfb3d7b388522a3f6e8
Date: Thu, 22 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663876253
