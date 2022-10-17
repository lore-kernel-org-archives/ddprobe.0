Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3D87F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74829C433B5
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666038653;
	bh=YrPkqrfAYANtKpEv7ohGB2AYYUKTC1+C1waipdmAlIM=;
	h=To:Subject:From:Date:From;
	b=aigu06e1ubm2FpUer9xuexib4223QOfK3QgpvqsqleVikY4k8PDHZA8okGjIoLbXJ
	 4i+cY4LkwQl2eFRzGPY6vtltFdv7tjQyUrigTLrvCnTQyVu7UR4YFpS+dN+K++HXF1
	 hj7teLBhMkPr8RTCOGF7Pit2har+hFl2Hpo79uECsRn/xDzDS7qLXgwZLDvOHUoKMn
	 ZPuQgguQwxn0jBSbHARmopmLAzf+QPwoIZymGyIQo7TW4iQNS+LIhowPaW6XNVBTPQ
	 Wmm6XKxs3IcwfyS7oSPOg7H2cknKAXAmgWA1hcZaTOO4nAsgcLa2qt/QDUNfbSokU/
	 i7f8twRKpvNmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A492C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166603865335.23626.13233355261515130913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525b2d198c1cc7694beb1a0c48ca8011042ad2ae8ca3ccb5ac6ce00ed1cdbefe
Date: Mon, 17 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666038653
