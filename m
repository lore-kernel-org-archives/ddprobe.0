Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455EE125B8
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 15:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA3DDC4339E
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 15:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683730866;
	bh=f02QBjFBgyGBnzOTQ23YcAXUy7XRadPPrkWh6yE00mk=;
	h=To:Subject:From:Date:From;
	b=jXxVT6b/Ht18DWdLaSnFsfx69YcId8TQxAJN2OAEcEasMhDLzeIKyFRCfYagcXC8z
	 r2BywfIHr27WTO5vlt4maO5vnw7bxpfjPJOoanU/cJ50flUORMs/DiRM+/Gz7OVmfE
	 7A/9A/PI1hLWXPiqW/WK8JdbwUSUJ0mQwNRx0RG+kcYYgnFunhBgltYLFfMtEyDsvS
	 bpuS6WoajI5O2eUk+2e0iykDrO4dYKs04+GdUNqitw2D0lypLT8BRPRZxuoVOG+KQz
	 /UiFO0CzLGRPmnGyA9L7Pk3IEvfzBpkgOOKiKRxKQOqGmM3a2PGGAw7fKbjTQ51Hcl
	 1FcQBnD1uiCHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2723C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 15:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168373086577.6721.1924819758315727343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a870e8723ab104694b10c6aa0281243db19344654d495c53efe324caada8e0a3
Date: Wed, 10 May 2023 15:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683730865
