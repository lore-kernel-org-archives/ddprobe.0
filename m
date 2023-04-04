Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376F2C942
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 19:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE755C433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 19:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680636425;
	bh=wQqMJ2wACZUIsQ/dQetlNTtMrLAKCwvkTbddtVRwB78=;
	h=To:Subject:From:Date:From;
	b=L+64OgXSdMOha3k0BrYs8A8TxrTY6wInWvqVTPHRcHja4ZTnTbChAjfZbVIy6SycU
	 xHItbmPgFyz310DwWsZlYC5P79Pqp8Tm0EMf5ATUzq0FRDeT9may4oN6CypqvGq8xh
	 colNaoAxMC2pIEX1EQlTTmO+ppF0iHa8KkWvsj4WEuhUsIByyqnOrXTQD1qQvjgyP8
	 7LFxj4MGBzNDtjKrvDxVw7e/fPGC9MrIieFHgdTPIvT7dZK7W89Zl8zD8wJMWN/qJe
	 5atlNAHRWhAW3dDNh6AFaIDDXWulXSV60YNAvPGYaTfDZOMThearEWCPKARd7GAjX8
	 zDWvPK0JWdXEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE983C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 19:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168063642577.676.12150954388518635044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08465e1c2bafa4bd291e1a998852a3da48ad614542082fb631cf41de9182813
Date: Tue, 04 Apr 2023 19:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680636425
