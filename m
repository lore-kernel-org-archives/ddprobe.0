Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57F4641
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 689E8C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667296254;
	bh=Ot/KIxWD8jqdBA7oMrDPGZaCn9t7hIPJylm3PpnjDaY=;
	h=To:Subject:From:Date:From;
	b=mmHPm2R/fTcXmIYgi+oCbKl7SO5QrV2nlIsCmZ0coKjFO+/JaSpR4Vr6LRwGVWBcP
	 FAhblPsjIFpHYtlTQ3Re85mN8BkTQhe+HXi06ENQbfyj3JKmb5N+376pok+Tdu5QBD
	 Vyh0VMhzKLtuWDi/ykY+BcVOtE/FK0eCyS6oTb6GLwHYLayZPDZVT4Y4YvYmrbhcN/
	 wNWcNQsI/Ik8qRdnKDRi2+dRyxQ006UHvCW+k5gpBSfTC7NskSDzPfwPkeQ5KSiYdn
	 bPZEyidoVxxz0kc6L9BPgtpjwmWUcSVwktPN9nSx9NYqajZudEKnwgpYaL2kczOtG3
	 GXrkrFr078SZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F325C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729625431.16547.9644403056240330900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44a73caddea3f70f7fd1584c4ac29a7a8f83bc1333add20644abec342a39270
Date: Tue, 01 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667296254
