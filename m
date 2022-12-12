Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16F553B9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97180C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670874687;
	bh=94mMashpzo8eXqFe+JEv9E29Sur8w/CMMLwrFiEX0FU=;
	h=To:Subject:From:Date:From;
	b=Wp3euCtGL4OdNzjiwXQZ+yaYfNP7cUAcAmlc0QrPEfNXXhG2sax9s6snpj6u0F2dh
	 iQx4jBZeDFcpkwLODwVvoNjeWCvck3wuVoZ8aC8Nd0iAcMm+jNPAawTEKDOu1mALZ/
	 nYliVecvmuvsyR3ZQGnDSmaQXEeQLzQJlmdKIdk3hBin5Ngi6r6ji+HayNohwYMM/Q
	 s1jgcDHaozz6LOioQujDqkCqe7A+hIETsci7mXGpg8VDuWyTSeWUWmHIg9UI9+ONEd
	 XIT6ZSHTwalWMzoxlPc/Bmm5ER8J99ZuWjmw0leokxzL3taCFfQLttMUiCZ6awGpoi
	 wbX3JfS3/7YIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 755A6C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087468746.7365.12962829064278663908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f3938eb5c364a699f4cf682b91d4f01318a8dd386191467087601947ca52c9
Date: Mon, 12 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670874687
