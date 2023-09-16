Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5FD1BDF8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 18:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D943BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 18:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694890508;
	bh=oaeiYFUoFed5xL+Ic4xROEMUPp/9PeSwopOIOwUEXyg=;
	h=To:Subject:From:Date:From;
	b=VOtO46JPhtcXuqdAsBwlPB9YnlSEKFDfjiKi9fdKDbrTAWhYkqb/6LOcdkm6c4Xl3
	 zfvXlPBXYW/ptaFnlBznluDu+oY6FaBWi6F8mIWexhIHbdsiqZcWPsFy/2wVjKYOKF
	 GysQakTgEk/GUVMbYe5kU483d6vSZPUUVHVWk3oHTQMUew7GTT4Vt0R9LCmYpmnxCK
	 qET7sREu/7clsRw5loRBQ75G6pzvOui6x5MwWv0rGUXVtE2MxSrS0jav2jXoNMatv6
	 G2n9QEPHyxPtWzkLAVNGaV2NPGvADrWRf53TxKsQTLzMxpjnKZ30rUzS6e7KbVcuGI
	 2ae1fkNTPTOTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4522CD13CF
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 18:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169489050872.28557.16926638334494237662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea44504dbc29a059160f7bf9a0da1fc58ced2efb1426ef2632230c773afd035
Date: Sat, 16 Sep 2023 18:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694890508
