Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB80D28EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71355C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665597053;
	bh=BMa0AshPGZOiorAyZobD/UHfbk+oc5FwX1TFW0Ykitk=;
	h=To:Subject:From:Date:From;
	b=XwBkN4lWZ6N2ri3HFgnxzXngXTyZSrnjXuD8xLIN5D94A1N7/jhpqct6Vuk3DKvP7
	 oW1Qte7BKtNaCz3GfyPU/MX7JC1fwTqO3CS5OJ5W/9k8s9fg+KOuD+ZCwXiauYcfhg
	 VHr+oagPflTLdkW7Ba+8KIcAnIvXI37hUXxEWAPrv8Jcmh8k1yh9nVVIXZgK0W4tIw
	 6WJSSQRi6WQ8tG1I3BnDTaxGHFgiHUVtZ0IeqEceW63GxlbQT9gAQNbmJ6iv13B2t8
	 3sjTi42jyriGqyxkLpEga9o4ZZhZzE4dso+l87s+MbpQrBWomsAG+qMXPXC3XkNPCb
	 4evt4uPeDcNAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551C3C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559705334.19617.18008945526526353244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab64bd12d3d2217edefad404ce1ff836e4650133407d77be857a88d0034b811b
Date: Wed, 12 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665597053
