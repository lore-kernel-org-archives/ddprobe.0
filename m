Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E0A7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B66C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686704228;
	bh=KCT4tnATfjxV1sClaasTX7xcl8b83v4aVgaI+rOm1ck=;
	h=To:Subject:From:Date:From;
	b=mCitX0/2rz1RUEB5fK3OylQrOcqqv4BoBp+KGZdpvVQYtq6NiiU8wUn3eNsnDpKz+
	 uOelaAfSAer2+YNBh0tWh/8iQ4M1Q8L5h+CKyMpi1e3ZcS4YxXHeTt310KRdcrBC0g
	 hQezgRvCq2+q0RSWsuGAlToDXZ7GzwOD4wvE/hHpDMj2kZBpjeObUfsZ0ML9I3Pv8q
	 D8k94DTyxaNd8BZ7hhsAsL5eBoouuCqehfXTfrvPoG2KuRewnYiRUKlo59+dY3N4yV
	 bvc2sRkNC44OSEnn04npozFZg/bOylOAtyReb/pUo3IDiyTbA2UNCRTFYUpKhE7qj6
	 ogHX+LUDdkzYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE83EEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168670422870.31568.9208642625253212237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba6b6852b6f8a8af1edf1a9933d4ff0b6f3c419b55cac248204318a023a43b1
Date: Wed, 14 Jun 2023 00:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686704228
