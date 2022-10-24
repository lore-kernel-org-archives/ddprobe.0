Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99877B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C21C433D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666590653;
	bh=oC2/2Tewqmovmc9jXkehKEoLMR6aHQrb27Dvp4158ME=;
	h=To:Subject:From:Date:From;
	b=eBEZ384PJYr0bigJnz359oK3CbYZzzTO/Q56bOPnRjYF1l89TgpXn6///+hezOG1T
	 0cYU2nmtxdqv+t5eZNPldPCMF34iHZJrff9xDqrqWDyBkyJq4fylU9R5vUSPz2B9wF
	 vVS1F/4nt/kmLOI9f3AjOaP13qwp18ZZkAArkw8JvJEuh/vuTtQdbCY/xlGoGl8Kpe
	 8ZeG3Bbdyh+C8r93mEeY9ITnkcFeywGV89NtVQXnY/9vZCQ1IU7zsZ2FFE5Hfdu+8Z
	 XsH3wsmBSdcgE6ucAMnkQheoSUxf+bG9fYOxujBDq1lc16t4Q36joz1z/wvC1pM3U0
	 Zr3CDLGuJ7Xhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D20C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659065333.8583.8790808848037044982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb478a8e276ac6204845e8d6c4e989a512e352a1f862ce9d1c2eed6a0fbe0587
Date: Mon, 24 Oct 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666590653
