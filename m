Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B877E7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69C29C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663057853;
	bh=ezr3S80/HebBHyIUeod2dcS7m6EfE4FoAeRjF+QJsfQ=;
	h=To:Subject:From:Date:From;
	b=CjIjkrovfLVGBrfQyBKtcskR2sMYfLSoiCFfZKQfy2Pe+/v9sMRwWMtz1GdA9jmQq
	 B+O+chjETmcul4GNbMTE6dFPqiRFZp2q+sE9T3dGO0hWqcTfyejs3HNsoY0xMdLYXM
	 o7xOkS/2AL31aVTWHGu0FII2o321w6eDToZaqkbG4p1StcYZz0ECJrOOENGyUPWLdm
	 HukjRYYWa7ro2nTxTu3PbF7cCSsEZzK1gIrozggWeoDYnixtIkycRRxZaY6mYsCjil
	 pp3E2v0JPwarQOYuxmK6xO31rIKylQySidgabnmH2op8+xXc3emGUNBZmgFkHc08G5
	 /NqbbKm0zWnag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F35C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305785333.5104.4838968908610666120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc02e5ef7124e169d7102ed1d2f4fcc637f4d219f35302022fd7d7004fb497e0
Date: Tue, 13 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663057853
