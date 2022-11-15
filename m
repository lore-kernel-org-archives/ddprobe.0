Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0A38AD0
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6F5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668550854;
	bh=2Etd33GDiHEDOUUKHjftrYWTLGpz+84MXjWSIHwuREE=;
	h=To:Subject:From:Date:From;
	b=NiWs/AzSn9NMloQ7pY2J0MDzcCjQ3avKsvSK5atLkC46VPC3y8fWURxgn2F5FJIfH
	 pu9yeULNh857NC1+zETjOxy67MDRfQIayXIB+qwDMEcxGgNHgwRMVzNEtxq33Fhmnm
	 9jy2YtydDkFfp6w4qabX+l1qi4ljxpwqbEaYg/RYlfqZFFmgx7Wk3kEKEVomfSF/PX
	 PLH6hwVMwE3xa1dasJnuqTGlNZmdUmVdCEfK1+H+M61mHp5p92Q2Bcg5AsNo+7dssq
	 xFehh45DJXVAWLxoDxgVcEnb5ZLpNelTyAn+m2LtTWx97SL6vhtEaw7LLHvkI3c/Iy
	 TwIttQu4VkVxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AC8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166855085433.4250.16523128690020295235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffd8e6b2ad9b54d638edf21ae7df27f5565875594c38a1699fbaf3cac697d1d
Date: Tue, 15 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668550854
