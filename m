Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B202989AA
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6986FC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662574253;
	bh=NGniCI2NmLHJt/uoscLDHddXR7LxyF12+dvHqREK++w=;
	h=To:Subject:From:Date:From;
	b=KUufjcNdv+5BoTsk9rqg3+1Y8DGJdN/Zrxh7JJd4lrDet1/4h6sG+n3d5/zHQRtxM
	 7YJzskiJdqs6ya9tzA8ZWUmkfmDjwtV6mAe09HXpdaZm1wSIAb0+GStFY3t9iJRZ8f
	 tjZ5nRPxq35m/kQ9Gpcno852JwtGGPZAVhFpS9AoN8Pp4TPcQ+8SQC2+HMEwx9kzZ3
	 jiEFnnI+9DCqMx3LixJWSU98Kcqv4TgSDjck8T4xcQpi65I1XSnnjUUQk9NnIaytjq
	 l0M1m03IN+Mw//KnrjdAjGsY0E/Ed5oXWa4kGIIf/oFhbHoOXLpbBs790lLR/Z/Zp/
	 L+mKCbtuCn1wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51915C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166257425332.715.4124007943773294909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6ef0570327b0714e99ebcaa2a37cc7f1139209a14312b0300bd96e941292a9
Date: Wed, 07 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662574253
