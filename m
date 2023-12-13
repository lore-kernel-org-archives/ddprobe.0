Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A92FC14F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu24/54G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB80C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702451896;
	bh=A+UiBT5sivMy3JF6XqiUjxl/XXe+qAvWLJUgGCx1ICs=;
	h=To:Subject:From:Date:From;
	b=Iu24/54Go16+JxtLp8o9f6axr1xZHzCRcJemzScYQ9lVG6X6pKSKeJJHD3jtOVR7k
	 WkpcnamDDlHTlaPp+rR+5kZnTlVytXvIke8F2jEqIV7+DV3vzzNe5KyCThADeR3FYA
	 He+EdDj2jYZPzUWo57yhs800yMuGNFBbFA+hMUJfB16SLN1c/unGrMr+Ybm0xFxq8G
	 uep+wX1+7tI9pSgdate1WjKKCsKIidvycTvX9qwMHtRnaf/qbu4Mbeu0DyEiTx0XnR
	 NwO0kqpOBHdX0aNoTTCxtR5K11tgNbblSvAFLvxeU19JXPCCS8HnV9mvhbqelcV5Xa
	 8MM5xXea3Vtkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFEBC4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170245189638.19170.9863778420458609242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341699118645676dc82a5759e7c60e1edc0ea7b9134dc90ae9b379b189c56d88
Date: Wed, 13 Dec 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702451896
