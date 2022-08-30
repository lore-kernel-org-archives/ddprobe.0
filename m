Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25977C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 682BEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661856653;
	bh=N1O5SK0GKz2QedlCjs9OIA5OB4LKYHeUvpbO9abKLpE=;
	h=To:Subject:From:Date:From;
	b=qsam9PykqLv+wWm/PwZM83sTT4Ww9ww72BT9UuVSQXcoOC2vZHOv/D9I9u/eVaiew
	 mHb7FGezye9V3yoOErDsUjzEgetxfC8EelQg/vOkbdAAQpTC83UMLuJ2ckLUteZM41
	 rKGPLlMHbYQuSQlPTMxj459Zjlid5gNUgjxMRIGbmvJjhlR4XkNtkFTyui1v1eFFV3
	 +0sxVXCULZRhSqnJZhiadQrZWKU/c1YVhIIcnrF3cFRw0PF95A/WZIuiqBNJ48JNOa
	 na5HwbNnTDpBn0C5SZy66kjis/WqG/O/uidnfx+hTRZHQtpGhqegE0Bv2Bd1eCH6eW
	 R51QmmQpyECcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50317ECAAD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185665332.29797.14633694405979932559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f301485e71b82fa45f2f4972eb6b2f080d499aab10ddeaad4df36df71acc5c4
Date: Tue, 30 Aug 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661856653
