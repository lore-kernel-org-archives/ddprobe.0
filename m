Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506667B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 06:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9F75C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 06:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682404505;
	bh=rpEt3aZ4G0sMj7vb7K4ez8R9OnC16xfmi0Wb2wvg36M=;
	h=To:Subject:From:Date:From;
	b=SFFG5nwiHfUUfTdZSTHYKCZIQbr5sbb8nFbx99IyIErgqNDVRErjHcBWHhFZvrgkY
	 nn0Vq5Uk0my3Ou3YuiraYLCzbvbIbatHm2nmAKpuDqruP6e2zEn6nCyjaxlBLQxpjq
	 XMWnWbBDCozgh4/+C45/kTFDd1a3zFcmz+wgJj98K1/BA85LRBVnM/qVpYdREDy/Qo
	 vAxSMUt8xStPZ5epMn2iVAg6a6hH/8jwgzzKa2Ml6msXcmf1TWfxPYVCb/GzCmGO7t
	 HZfdoVZ95WuYFq01n92P1HjzGbD+DR5ZMWSo8UW1NrkL2icyZBqJsurv7pLPzTQwe2
	 Wr0D6ev4ctUcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD92C77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 06:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168240450583.26936.3328610579230063082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b517e6cd0d74f998d1e4a75c49ae57251afc30ce589c50c96fba7ae21e00e5b0
Date: Tue, 25 Apr 2023 06:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682404505
