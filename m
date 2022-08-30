Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59C0374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D2D2C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661833852;
	bh=qNAiD0buQcsY0zhmn556wit/EVhUqmUFDIT6RPOhc9o=;
	h=To:Subject:From:Date:From;
	b=K02KvJuPFvQ0Rps8SJOfxD9D5gszR9qc0k4A77wBiTVO7vCkDGLH/fOpSdvkOlHBh
	 jkFIdt/TGyi90QVySWFlvT36f1wQIp47+/cQ1KU8D27wzrZc9zXwB16OUDL2IdxygZ
	 sCY0Epx1AWX/AX9YxZHLXk1GdeDfqwOcrZvO1z5kiX2c9C1w9FgZ5Fa6T4DalvVLDe
	 zU0Vz3VGxURp87IRF9ZqipoE9NcE312wKHyQopT0YK/FCr/VBsS1qko8QbenS8ACYX
	 nIzYY3CEWM7DgZNVAYx79VS9eOcy26AVTfXJ+pYJyoyDbIPtgjN9NgmFO0qMTEW8xB
	 SHQxA4IF50DMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CFBECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183385233.15148.6428301764239531634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b94608debbdb417fec4539352f7642a11d120531f806c07b677e985c62df439
Date: Tue, 30 Aug 2022 04:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661833852
