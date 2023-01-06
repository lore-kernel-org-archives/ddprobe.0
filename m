Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004AD7460
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C4C6C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673020887;
	bh=mZ44DrclxbSa0CkYf9y9wsVAL6ce+RyKf1jaCMcufBs=;
	h=To:Subject:From:Date:From;
	b=el3ZvqG3PzIM7VpILLC4rlkVcTItbZe8lybKKEqpWwPXBG9+Ut4cKbAYE7LpdfjTI
	 AaHkj9Tf/50guCnQh60Z7XYkrt7YjpTip/sN2dxGTCCX9xB0X8mWo+npzq5T3zbY7L
	 P0lPOCxkJoUkJS2NT1SxCwSkCFb6Ez/tYzE7P3uRY8F2MMMnDqGhsaKjS/dl1aRnob
	 m0bttg7fc/v+ih+C5J94/BKUD8iJkHmLm48XwBXAfygOi7gu7Kgh7SMMGeka/QlJ02
	 gzdce+p2TvtxQfkNsP2XKoiydGCPFbl6ReKG40wDxk4UjrMz/SWH5OHJlmrSD5a2Rg
	 veZ+pDmlQmgiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70ACEC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167302088744.2117.11962975236402540891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a3780c31480a28482fa9f9e4959bfc17758ef89ad93f6a45d32fb10694c370
Date: Fri, 06 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673020887
