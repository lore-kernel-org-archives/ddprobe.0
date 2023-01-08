Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AD223A9
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D007C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673187687;
	bh=Tsrhzj7+4bMeXe0VkKHSlAnN2L8hHEgSjTxenKVYL54=;
	h=To:Subject:From:Date:From;
	b=AlPbyrNZPCS4aVQP/wB1sQC80SJI4zBoHBY2D8ZXAn5xlRXtUertpAvtun3e1Dt2m
	 gvxjCK9LmlTPuH96r2600OW9NEKQ7ihubWQd4tyskl8DjT2fieD/7rdf4EpNXLn+bS
	 LSa6F9HFLEwIeZmmQTNIDcM/gDXP8J0EGeSR4qOtKOKkbAycWDBiz2CqmQdqFNm6sN
	 ZwHWj6fHYjbfZbWCHRxv5tIjMSrm9zUJNBLRFVpH7Moln6+K5gLWxLjn4EwoT1724l
	 xtU04hezrC4x2Xm3pgqsRezhzx5h+8fw7bSsx+qwJ6Hnxd21K4iiQ9F+Nx4xs0x7UQ
	 TlFvBaJNpGyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71882C54EBD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167318768745.5368.6065636452202540674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8500ec60b30890193fba6f76c651bae0d432cba53982d394ce967499791114a8
Date: Sun, 08 Jan 2023 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673187687
